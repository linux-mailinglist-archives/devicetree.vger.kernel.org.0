Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E79C3B91EF
	for <lists+devicetree@lfdr.de>; Thu,  1 Jul 2021 15:01:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236603AbhGANDN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jul 2021 09:03:13 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:25973 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236640AbhGANDE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jul 2021 09:03:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1625144400;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=1gyaxxwYOZpXLqVnHi4CE3c1kMcas4IfjUJUZzaROx0=;
        b=R5e6kah/pn7r8mlSHfs5nDnIGKO1wteMZMekDCUedheHpMB4hEzi/8lO09PmBddYTn+H5o
        6z/B2POeWIODZZ0A+rsLPKUj166cyDW1QLXtkRYp2FqaeJYdZkvqdvE+0RNguFCCLb6OLd
        8TpGusL66b1YXqnY6b3tSkV98ds9hYU=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-571-8eYvwPpZNxuWDYZ11AdnDw-1; Thu, 01 Jul 2021 08:59:59 -0400
X-MC-Unique: 8eYvwPpZNxuWDYZ11AdnDw-1
Received: by mail-io1-f69.google.com with SMTP id r137-20020a6b2b8f0000b02904fb34cb474cso4422305ior.5
        for <devicetree@vger.kernel.org>; Thu, 01 Jul 2021 05:59:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=1gyaxxwYOZpXLqVnHi4CE3c1kMcas4IfjUJUZzaROx0=;
        b=bqUluF3EeuHAOcEqROvKdxeGpzMWmCarAW9TrgDJnL3zRYQSTeGQoLxQN56B1uFZWK
         MaHlX+OtCZfRCtiuOV2DVTXyU6n1csQa+fWF+vWaRgMZ+GDUPWixZ/tOOxI4fOLkudYa
         8eYrgt9mgHZ2mX+/ulxrH3cBTZ/3T3gie23Qzik7aOfAwHOE4mKc2+8S6Dq3nxkOLYCh
         qXiArz2MlNbAgBt0aFOiisnVmcyjcCtlRt/3AUe0Cm1aHx8DUJ9YE/bSb4EQDLB4jKEA
         +yMUQG2HLAa78izhsixmAJgP020vr7iS/PJsnzHPFrIlPM0htll2oJQIBqfhd5wL0wtW
         Cs/A==
X-Gm-Message-State: AOAM532UdVJuhE8zWA3UYAlxASq2w0e+6DHM6ZSVJzwAQcK+xlt73i8b
        5Y7ZaJH1EOItR32/ktnESy/UCcPH02zGqFaGGM63XFRUlhH+Gk4UVh2Av65NWVHLz6NSedycybK
        MxbGLwd4SiOzRyHLkrctdBA==
X-Received: by 2002:a92:c792:: with SMTP id c18mr28985874ilk.75.1625144398940;
        Thu, 01 Jul 2021 05:59:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy03Vs1QEKlhqi5D92WOpvsWXSFnIRm1XsAEbfOzRfJE2E8H075uOfvaEOx3PbqOEVv4PDRiQ==
X-Received: by 2002:a92:c792:: with SMTP id c18mr28985856ilk.75.1625144398676;
        Thu, 01 Jul 2021 05:59:58 -0700 (PDT)
Received: from kasuf.ausil.us (207-179-239-100.mtco.com. [207.179.239.100])
        by smtp.gmail.com with ESMTPSA id l26sm13450699iok.26.2021.07.01.05.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jul 2021 05:59:58 -0700 (PDT)
Message-ID: <f46b234e0aaf4356804d5e1446910bbedcbddb51.camel@redhat.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: helios64: fixup USB setup
From:   Dennis Gilmore <dgilmore@redhat.com>
To:     Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
        linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Rockchip SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
Date:   Thu, 01 Jul 2021 07:59:42 -0500
In-Reply-To: <01f1b032-14a8-a6fa-9063-23de65fc6f43@kleine-koenig.org>
References: <20210701004043.18585-1-dgilmore@redhat.com>
         <01f1b032-14a8-a6fa-9063-23de65fc6f43@kleine-koenig.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.2 (3.40.2-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 2021-07-01 at 11:31 +0200, Uwe Kleine-König wrote:
> Hello,
> 
> On 7/1/21 2:40 AM, Dennis Gilmore wrote:
> > Without the usbdrd_dwc3_1 node defined u-boot will throw an error
> > and
> > reset the system.
> 
> I wonder if this should better be fixed in u-boot then?!
> 
> > All other rk3399 systems use this format
> 
> This is true for the dwc nodes, however for the usb2 nodes there are 
> several that use this idiom (and even repeat the label name), see for
> example the &u2phy0 node in 
> arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi .
> 

looking at that file is where I got the idea to set it up as I have
proposed, it follows the format I have submitted

Dennis

> In my eyes it's a bit ugly to have the two nodes as separate entities
> and on the same indentation level in the machine dts given that one
> is 
> the parent of the other and enabling USB needs both status settings.
> 
> Best regards
> Uwe
> 


