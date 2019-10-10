Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1947FD1D6F
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 02:32:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731834AbfJJAcm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Oct 2019 20:32:42 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:43193 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731155AbfJJAcm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Oct 2019 20:32:42 -0400
Received: by mail-pf1-f193.google.com with SMTP id a2so2708671pfo.10
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2019 17:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hwafwgLNngUMlC4oWHtYvT1ITO5nzOsFkBcAKdpZxJc=;
        b=oCo2UZzh1NJar1FOnQunNDg7VGAZRVDrc8ixlgCW/wcPpqcbAY+3tTJEQztNa0qPbd
         2y6WZSQVkkY9AtGM+aPEqp3HF94vyeeFo6nEc2Eg3kwHaArGISKn/W1xFejrdf/UreTI
         +V1HOuSBWAdHe6al6wCyEhEU8Hp5TtUpOYlEJenBdOZaZFKjD8piSgFSp7Vicj6JIm3n
         MtJSH5prCSzllusqZ9hfVtYeGF92muQuRKFP3Uo3C00cHu0xR2EnTt8xiX2t7FrAhGA0
         9BlPDzcGsvaSvdONG0rW01PNl+JJFWFO5SW4IM69F+etf4MEFkP7Hp95k2XNdrahCJsa
         svIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hwafwgLNngUMlC4oWHtYvT1ITO5nzOsFkBcAKdpZxJc=;
        b=cjuhNoi53Q7jjp41I7ZzTqN2S3KdYbEA8O4yfroDwre1GpYZMi+APzWkPRmjUTSF73
         6cv7KYJFk/4S8ON84KsooOA0inzxKqOaLBNe+U2GQcDCGlNmhlf0EABJgep5viooITOm
         7v7To38K7TEOFyzsV2MQpmHL7uVR26Y8gjV5KU1bQf/C0SNGnGiMLXNMtnSBCDNSoNCY
         WNJfHIGo7i9dcmLH6wa50QooExfb0D3jQoEWFZxxKgC7XifptZT8vsDsIYoACLYbXhAS
         FsR8PrSLqdR8NeG95BxECb1iwWfB6qKEw/VK4DZ9U/+BHCPalDoyk8PT8Ksyj5bRov38
         EZ6A==
X-Gm-Message-State: APjAAAX8lNwp5gfU3UwVi2fkNWyo3h1pGgsehA4ALmaHN5sBu2R6uJyD
        mBBv+DtRAGrxEMY21KdkLuo41g==
X-Google-Smtp-Source: APXvYqy44rmUKloIJITmQv3fmo4qusdRi2qGuLDOcOb1+z5L9mdE9mmEgbP0UrkPP86MCtd6AwIPJw==
X-Received: by 2002:a17:90a:2142:: with SMTP id a60mr7497811pje.8.1570667559681;
        Wed, 09 Oct 2019 17:32:39 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
        by smtp.gmail.com with ESMTPSA id f128sm3743411pfg.143.2019.10.09.17.32.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 17:32:39 -0700 (PDT)
Date:   Wed, 9 Oct 2019 17:32:34 -0700
From:   Brendan Higgins <brendanhiggins@google.com>
To:     Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     Wolfram Sang <wsa@the-dreams.de>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Joel Stanley <joel@jms.id.au>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, Tao Ren <taoren@fb.com>,
        Cedric Le Goater <clg@kaod.org>, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
Message-ID: <20191010003234.GA12710@google.com>
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 09, 2019 at 02:20:34PM -0700, Jae Hyun Yoo wrote:
> In case of master pending state, it should not trigger a master
> command, otherwise data could be corrupted because this H/W shares
> the same data buffer for slave and master operations. It also means
> that H/W command queue handling is unreliable because of the buffer
> sharing issue. To fix this issue, it clears command queue if a
> master command is queued in pending state to use S/W solution
> instead of H/W command queue handling. Also, it refines restarting
> mechanism of the pending master command.
> 
> Fixes: 2e57b7cebb98 ("i2c: aspeed: Add multi-master use case support")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

We don't have any multi-master setups, can we get a Tested-by?

Wolfram, since this is a bugfix, can we get this in 5.4?

Thanks!
