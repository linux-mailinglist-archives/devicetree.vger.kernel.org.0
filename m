Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9B66911DFBA
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2019 09:49:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726676AbfLMIsO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Dec 2019 03:48:14 -0500
Received: from mail-lf1-f67.google.com ([209.85.167.67]:39441 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726487AbfLMIsN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Dec 2019 03:48:13 -0500
Received: by mail-lf1-f67.google.com with SMTP id y1so1347883lfb.6
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2019 00:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rr+x1DIP1g1/KgRpSfHJSzeL4NNFx671OCjuV/vX6RI=;
        b=scNwe2O5QhBXfBOt3IjCVoJEjevAiU6USOetssutDbJWLfyJWVndWsZDvWW71CQYiG
         VK32P310iwbnHOT1jW8wAoNgnvxcSzuTv/55nym+iU6x85ADbyGe1huamHVHf2zC1F93
         JIbdPRQN3GvjL3s+GEMrZT6y8V16Uh4+LI1tFWsSR5KTxof2G76+m/XoGWjbhnDRuecl
         krXxgWelnmTmt5rkaX32h5GcAvX/L2Ey4bqai7cPz33O2iMreAO5hqS+JkwSK+1PfXsv
         s/VWYkuayvgwdFBiWWoh1DZ122uMgPhAQRJDA4clNr/PQWVjz6FcV7Vau4mqKfNTPMmr
         +bHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rr+x1DIP1g1/KgRpSfHJSzeL4NNFx671OCjuV/vX6RI=;
        b=Zj1RzpOcDxaS2lQ2a8FLVpSVYzt2cqLrZX71VJQnJnE9Yrab+D77ppQS80bjzcWc0G
         cBHCiDxl6V9mPnC9kzIxvEeF1qo8XrcFVHvl37/IK2OA0JfNVh1RvTCg1h75LeqmPlU3
         QD0Yg/fbxSEm2QKwOzrm/Q+9/rRSH73+vaZSl4ILFWbOka1/Js566m91zRQHTNU+3vLN
         i3hXLWMf6YsfS+mnZq4nih3AU3aoaJge7Fhhv6t6Vrc0DXhDimNGmYKWqeUr6teT/CvK
         hGTTAqAr4rmKkTgm7jUkUCm5ES6KGXniGIbB7QG2V/HxuauTN3DuGgBy9a660f8mBZEs
         ClKA==
X-Gm-Message-State: APjAAAWkee3K5Jk+i0TjtGu1Q3hpzcrVSMvmeszSOwXZRDkk6n7B0Ako
        0OCBHYw3PxOSEoZvKSuuHON94H+MNnRP5Wljpptltw==
X-Google-Smtp-Source: APXvYqwhoLPGJ2pldnisIzV0cBSTI53njCKP4Cy76wqlT3521n0r+bpxhYrwfU6BsfJhR67BVugqRW4tqQaZGqxTt88=
X-Received: by 2002:ac2:5c4b:: with SMTP id s11mr8073967lfp.133.1576226890954;
 Fri, 13 Dec 2019 00:48:10 -0800 (PST)
MIME-Version: 1.0
References: <20191203141243.251058-1-paul.kocialkowski@bootlin.com> <20191203141243.251058-2-paul.kocialkowski@bootlin.com>
In-Reply-To: <20191203141243.251058-2-paul.kocialkowski@bootlin.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 13 Dec 2019 09:47:59 +0100
Message-ID: <CACRpkdb2dvdyAUxt98TaoKAyMsFgZkOyUnn+J=NYWrnjRvp5dw@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: Add Xylon vendor prefix
To:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lee Jones <lee.jones@linaro.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 3, 2019 at 3:13 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:

> Xylon is an electronics company that produces FPGA hardware block designs
> optimized for Xilinx FPGAs.
>
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Acked-by: Rob Herring <robh@kernel.org>

Patch applied to the GPIO tree.

Yours,
Linus Walleij
