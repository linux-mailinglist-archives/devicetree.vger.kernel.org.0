Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1FEC3B88E9
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2019 03:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391491AbfITBaU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Sep 2019 21:30:20 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:39501 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391358AbfITBaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Sep 2019 21:30:19 -0400
Received: by mail-qk1-f193.google.com with SMTP id 4so5586286qki.6
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2019 18:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netronome-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding;
        bh=pbq/7/QcSAKDE85N8IewaNpJ/wXC8N5jY5fORhY96/g=;
        b=mi/OS9w8nDkLRGap8K95Y4Q3UVAvHFk6qpx2MIAtogN1OjTOuAy74W2qLOQINsdOcX
         stEDgraN47U691FLBd3PpdfgMHiQ8qHp75NQOC+73RgEdLL/eZv5AEGkwcixZFp9pBK6
         ibJeHPFPnDijzulKq67heLjYAt+mIXS6FzrXPnGqZ3xz3zdKOLN9ZgFtKMQDsMFAe0Ni
         lO9zV/mNBRP1johCxPYco67cv+wcoX7EMak5XvF+Er9sllm1aU2HSTHBeUD23wBREK87
         Vyt+qLM9H4r0W6GbfCQGKs0Ks7zDP3l5mOqqU/q/zvptcL4rNM/xYssAiH+8udCaisu9
         2tbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:content-transfer-encoding;
        bh=pbq/7/QcSAKDE85N8IewaNpJ/wXC8N5jY5fORhY96/g=;
        b=LZfcZcKh7zYmch+4DyJaWtWlsgPgiaaLWKc5Cz1lgX5QFEgAleffbtSDf96FuEaA2y
         uryl3/Jmkzba6pbyhwRmeW9axZw75thFmTeMmbUJDDga9aA4XcDYIaGtqFY1t3KCrXk4
         uCbsbTypFmZAegtq7T7WNbdIecDRFWgPw155q6IRvUJ24S+bOZstiSS6Vf4iFXdaezfq
         8L2gYThYUx1rOvAMxmAj4tkKlQIyoKos77JIk+67yfsRVoyiYhSnz2TPAnhlumsDhatX
         UVaCT5cXU213ZKbgI5i2Q+HAOhHO3Xe1YBh7+eydN04cy38knexYN4j3Q+RXJKoDu7ps
         U3Fg==
X-Gm-Message-State: APjAAAWltwDSMj1+KbDF2qZv3asUpU3VXTUGOpfH6tOyj0fF/lhEe5Wx
        vmPxfFuEf6E8DDiJh+wX8RtXhCBgDmQ=
X-Google-Smtp-Source: APXvYqzEV7pLpS4ZJFp6x2/XsyH01rtjFPpSbmDempk1NgOXLbB2Awtzion3d/NfONnM8+N7WKBbbg==
X-Received: by 2002:a37:f70f:: with SMTP id q15mr915241qkj.426.1568943018980;
        Thu, 19 Sep 2019 18:30:18 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
        by smtp.gmail.com with ESMTPSA id q47sm373729qtq.95.2019.09.19.18.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2019 18:30:18 -0700 (PDT)
Date:   Thu, 19 Sep 2019 18:30:15 -0700
From:   Jakub Kicinski <jakub.kicinski@netronome.com>
To:     James Byrne <james.byrne@origamienergy.com>
Cc:     David Miller <davem@davemloft.net>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: net: Correct the documentation of KSZ9021
 skew values
Message-ID: <20190919183015.0ea6fb89@cakuba.netronome.com>
In-Reply-To: <0102016d3b297538-fcca5199-6ad1-4625-b11c-3ad3919a0c48-000000@eu-west-1.amazonses.com>
References: <0102016d2b84f180-bd396cb9-16cf-4472-b718-7a4d2d8d8017-000000@eu-west-1.amazonses.com>
        <20190916.161455.1015414751228915954.davem@davemloft.net>
        <0102016d3b297538-fcca5199-6ad1-4625-b11c-3ad3919a0c48-000000@eu-west-1.amazonses.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 16 Sep 2019 17:40:35 +0000, James Byrne wrote:
> On 16/09/2019 15:14, David Miller wrote:
> > From: James Byrne <james.byrne@origamienergy.com>
> > Date: Fri, 13 Sep 2019 16:46:35 +0000
> >   
> >> The documentation of skew values for the KSZ9021 PHY was misleading
> >> because the driver implementation followed the erroneous information
> >> given in the original KSZ9021 datasheet before it was corrected in
> >> revision 1.2 (Feb 2014). It is probably too late to correct the driver
> >> now because of the many existing device trees, so instead this just
> >> corrects the documentation to explain that what you actually get is not
> >> what you might think when looking at the device tree.
> >>
> >> Signed-off-by: James Byrne <james.byrne@origamienergy.com>  
> > 
> > What tree should this go into?  
> 
> I believe this should go into the 'net' tree, but please let me know if 
> I have submitted this patch incorrectly in some way.

Okay, applied, thanks.
