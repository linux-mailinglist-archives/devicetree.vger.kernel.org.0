Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 875984586E0
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 23:57:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231237AbhKUXAQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 18:00:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230138AbhKUXAP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 18:00:15 -0500
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F111C06173E
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 14:57:10 -0800 (PST)
Received: by mail-ot1-x32d.google.com with SMTP id r10-20020a056830080a00b0055c8fd2cebdso26112691ots.6
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 14:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9XpcC2OzJKUPIULTfHPzivkbHxJbmpO+PtuVvED5p2I=;
        b=mVoyODWPGJCR+2Aba02Adr7LwF8b5MfaDHuieArmPUpfYS778GnhgKQAbvpVFoNWTM
         BFf/+vNPQfOSWaZiNcYF7XwGuGJgnYy6RnCa/9sljFofJACgWpichxq9pTbJUyjkgmKW
         ulkzWJm5Qck6BKKVyVHxNZzis2Lz1BPBL2eTPruicv/xWAwkV4Q9vwPwgS093JrilN4o
         Nv5IslpCAjs9AKKA2NMiCsNAUzwtx+5Z757VFEvIIp8uvjprc1boLADUzpC+O0yexslY
         RnEW7OJwhiOR09CkfYGoKfkNTbbJDjQW8g4aojgo64VOhyI/pFySTWwaEiZ3RP6mJI2j
         ShZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9XpcC2OzJKUPIULTfHPzivkbHxJbmpO+PtuVvED5p2I=;
        b=kXaNCoq2zV8128VQJgH79FP6ZqfDOcg6S6RXk9N14UwC5eGesryNcOIxQHStvqN1ts
         EBqdHP+cM92Zdcx3TfTXWbkM5apWGp9J9dR2q3lMdGchwjQ22uSCggZTQbs/s8UF3DH9
         l5A57LFduZ6KxSiHM2/VcUSJTTSaY63GLvD8M9DpYF3fexs4wgkzSffGCMgrjTiIi7sp
         04jaqg2rmEV6kzru8b2x3gtS1dwC2BZIgYXMLrO5MscyRC27t70OWc6EzhTs9l/jlmid
         a2ewMYErJ9orBpyGpoGBEsIm9euDGw89Dd3UfHxRKI1MOejqgCzx3t7itlc2uqJCK/4+
         yMYA==
X-Gm-Message-State: AOAM530ieIQy2E8hzKPR0rffAU6JdpRUIktke97s41MRuKlW0E5t/XuR
        N92NBQ3VthwJJ14rDMRY6u9lTGrV6V1dRF3zq4XJKA==
X-Google-Smtp-Source: ABdhPJxzNFh6C9N+oywTSQc3Tu6q4zZFkC2s7yr/nmKU6Lmxipg1uw0WFkxVFR5of0PSyTxufTbf5CuuXzrFU4AEA5w=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr21295623otg.179.1637535429674;
 Sun, 21 Nov 2021 14:57:09 -0800 (PST)
MIME-Version: 1.0
References: <20211110165720.30242-1-zajec5@gmail.com>
In-Reply-To: <20211110165720.30242-1-zajec5@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 21 Nov 2021 23:56:58 +0100
Message-ID: <CACRpkdbQVJTnVH8LBKAY3eCXvZLRnXXEMdgNtGwWVb0Zhk94sA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: convert controller description
 to the json-schema
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 10, 2021 at 5:57 PM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> =
wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> This helps validating DTS and writing YAML files.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

This looks good to my eyes but I definitely need Rob to look at this before
merging!

Yours,
Linus Walleij
