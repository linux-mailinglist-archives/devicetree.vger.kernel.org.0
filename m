Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3C08A1284B
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 09:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726427AbfECG7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 02:59:11 -0400
Received: from ozlabs.org ([203.11.71.1]:34981 "EHLO ozlabs.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726380AbfECG7L (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 3 May 2019 02:59:11 -0400
Received: by ozlabs.org (Postfix, from userid 1034)
        id 44wNK93JC5z9sNm; Fri,  3 May 2019 16:59:09 +1000 (AEST)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: 32eebf96669568014b79b83a03f7895f3ec8c95f
X-Patchwork-Hint: ignore
In-Reply-To: <20190320125516.12277-1-horia.geanta@nxp.com>
To:     =?utf-8?q?Horia_Geant=C4=83?= <horia.geanta@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
From:   Michael Ellerman <patch-notifications@ellerman.id.au>
Cc:     devicetree@vger.kernel.org, Scott Wood <oss@buserror.net>,
        Paul Mackerras <paulus@samba.org>,
        linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] powerpc/dts/fsl: add crypto node alias for B4
Message-Id: <44wNK93JC5z9sNm@ozlabs.org>
Date:   Fri,  3 May 2019 16:59:09 +1000 (AEST)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2019-03-20 at 12:55:16 UTC, =?utf-8?q?Horia_Geant=C4=83?= wrote:
> crypto node alias is needed by U-boot to identify the node and
> perform fix-ups, like adding "fsl,sec-era" property.
> 
> Signed-off-by: Horia GeantÄ <horia.geanta@nxp.com>

Applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/32eebf96669568014b79b83a03f7895f

cheers
