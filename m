Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5192F6AFE5
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 21:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728518AbfGPTbU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 15:31:20 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:44904 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728137AbfGPTbU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 15:31:20 -0400
Received: by mail-lj1-f193.google.com with SMTP id k18so21119796ljc.11
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 12:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TR0srzV8QRgbq5yy1IYgdGPuZtmZLkEMR8eCWBvhLhg=;
        b=Vm9pQlSUdxrt9cfig9nrNXzrj/VI4vKXx2tfP2mlwUjLnd2HXHFHTnEUYkvwMAosFp
         uQGjbkglZdqb7FLe6SkrXbBZsMAKjv7ukiTLMTtQ8fHtikJhjyBrDqFPpvuw6oZqz+QP
         eI5kKKSbcgf070CKomC+gRkcTKt30GMW5GWA7eshDg0N7IgM67P5RWmcVUUBOSwHCiFb
         yBZ4ZpZrNihFf9ozelhUJB9oIEr47+vhVccZ4N5VZZAEYhycVHrUCP2ioqv2D8dEbV10
         gn7TsD70BZ2Hm1/AfHCqRFnsbXHynsmdSBhFzBwaLv6r1BWG9VTs4b6izWAwH5aZMMPy
         ao8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TR0srzV8QRgbq5yy1IYgdGPuZtmZLkEMR8eCWBvhLhg=;
        b=iutmD06zyR8NDX+GwkJ0ZVUnis15awC2Jqo8uSMFMxESEvPYYW3a2YGfB5XRb64jmb
         /37o/aMT9HD5n/pX3e8gLovTNIMNAdiCgUYoqKDvs2Dw1GnSyidHIxjcXiJslKreoTBC
         v9LPdun0klwBuWchzF4MsdxLSAmkVLe5XvqxXAjHiEpusSbti0SUIPYA48LUoQp+uTDj
         Y/1OLE5wVGFFWwQlAHD62J6B0wY8dSldgVrW+7dYZwm1BG7vm1gZyVhHhWGRb8Qkleyf
         739+Ygnx78QErseDbx1dfakbDMgRiPsAaIhVzLgGB7kmLzXKDnkoqQgdullRYxmAWZtS
         cmzw==
X-Gm-Message-State: APjAAAUg7MKZ9nsfm/j+oeSgtTl5shDEHzOv2ZuvjHqOBV96TfqoHuVf
        Bfbq/RsG+UWwV68ewxPfPxCGk37eC1KZZTUQEO0=
X-Google-Smtp-Source: APXvYqxZrJGUj9hm678NruPq7IKciIkLmbqKIWs4CR91XeQQvh8qRE7xS2kDRM+zaCCIFpndGiDjt9ndBVSwuOtQjhE=
X-Received: by 2002:a2e:4e12:: with SMTP id c18mr18422899ljb.211.1563305478606;
 Tue, 16 Jul 2019 12:31:18 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com> <1563290089-11085-11-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-11-git-send-email-aisheng.dong@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 16 Jul 2019 16:31:15 -0300
Message-ID: <CAOMZO5B=yK_S=2xRFt_1pAJ2iYE7CCCenOKQ3rjOeF3e+=vQtQ@mail.gmail.com>
Subject: Re: [PATCH v2 10/15] arm64: dts: imx8qm: add conn ss support
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Dong Aisheng <dongas86@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> The CONN SS of MX8QM is mostly the same as MX8QXP except it has one more
> USB HSIC module support. So we can fully reuse the exist CONN SS dtsi.
> Add <soc>-ss-conn.dtsi with compatible string updated according to
> imx8-ss-conn.dtsi.

Subject and commit log does not match what the patch is actually doing.
