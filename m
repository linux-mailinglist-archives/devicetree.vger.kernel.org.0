Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A34C013C80F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 16:39:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726248AbgAOPjo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jan 2020 10:39:44 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:43290 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726483AbgAOPjo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jan 2020 10:39:44 -0500
Received: by mail-oi1-f196.google.com with SMTP id p125so15751665oif.10
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 07:39:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oQF2OHgOU668qHE/qFtSpHWzGnN6zfD/pu9qzKZX2wY=;
        b=PayG4HnbvgHFgvlTiWkVrqinrXoVUg6AccsALBKtnq/CAkMQ9JRAdofBo4mRmxyBE3
         NGCRE+qf1O5iGuLd2DVA4hwXyAIjpMkcg43NhUDnxc3K+IRS/0W9G/S8EYba7MEpjGmK
         gr0vueYlfrvdUvRfOqlXJsbaS8Ogi6gLdgpk8ZoSsWyWbMCz0rngzi7dotD5F3sdLGR+
         umvrmxFlVnCH5P20noBePJWIWz9wBsyy/EvryCSNqBm0edQ9e/+8981j/FmJ62JTjy6D
         Y6oON4VDYdFCyzLoHz8YZRwTmaEq5CI/1ZyyWYQ0gaHHp9d5yIGQCtDDLng171OuLoTp
         VYpw==
X-Gm-Message-State: APjAAAUWx/6RTIbHQ3Bd6B57j1WnOOHUm6rqllWg1EmRhKqLVAdYQ6dA
        40vFAY3do5MWzXdvsOpbHjWG3YI=
X-Google-Smtp-Source: APXvYqxyoKGc0YdvTEdtX8TpPAP/8Jp5iXR8oOpY8VF8FU5eCs2rG1UxgUowiYPYnTGMl7nhpIEAzw==
X-Received: by 2002:aca:1012:: with SMTP id 18mr248892oiq.151.1579102783063;
        Wed, 15 Jan 2020 07:39:43 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a19sm6610549oto.60.2020.01.15.07.39.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 07:39:42 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220379
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 15 Jan 2020 09:39:41 -0600
Date:   Wed, 15 Jan 2020 09:39:41 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Robert Yang <decatf@gmail.com>,
        Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
        =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] dt-bindings: iio: accel: kxcjk1013: Document
 mount-matrix property
Message-ID: <20200115153941.GA9685@bogus>
References: <20200112203301.30235-1-digetx@gmail.com>
 <20200112203301.30235-2-digetx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200112203301.30235-2-digetx@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 12 Jan 2020 23:33:01 +0300, Dmitry Osipenko wrote:
> The generic IIO mount-matrix property conveys physical orientation of the
> hardware chip.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  .../devicetree/bindings/iio/accel/kionix,kxcjk1013.txt     | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
