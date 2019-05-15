Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E58791E9BD
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 10:05:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726025AbfEOIFF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 04:05:05 -0400
Received: from kirsty.vergenet.net ([202.4.237.240]:57690 "EHLO
        kirsty.vergenet.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725876AbfEOIFF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 04:05:05 -0400
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
        by kirsty.vergenet.net (Postfix) with ESMTPA id 9E1D025AEAD;
        Wed, 15 May 2019 18:05:02 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
        id 6B5C5E21335; Wed, 15 May 2019 10:05:00 +0200 (CEST)
Date:   Wed, 15 May 2019 10:05:00 +0200
From:   Simon Horman <horms@verge.net.au>
To:     Chris Brandt <chris.brandt@renesas.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v3 10/15] usb: renesas_usbhs: support byte addressable
 CFIFO
Message-ID: <20190515080459.cumjv2ahv4hddhvk@verge.net.au>
References: <20190514145605.19112-1-chris.brandt@renesas.com>
 <20190514145605.19112-11-chris.brandt@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190514145605.19112-11-chris.brandt@renesas.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 14, 2019 at 09:56:00AM -0500, Chris Brandt wrote:
> Some SoC have a CFIFO register that is byte addressable. This means
> when the CFIFO access is set to 32-bit, you can write 8-bit values to
> addresses CFIFO+0, CFIFO+1, CFIFO+2, CFIFO+3.
> 
> Signed-off-by: Chris Brandt <chris.brandt@renesas.com>

Reviewed-by: Simon Horman <horms+renesas@verge.net.au>
