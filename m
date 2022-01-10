Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B969489D40
	for <lists+devicetree@lfdr.de>; Mon, 10 Jan 2022 17:14:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237125AbiAJQOG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jan 2022 11:14:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237115AbiAJQOF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jan 2022 11:14:05 -0500
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63E2DC06173F
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 08:14:05 -0800 (PST)
Received: by mail-oo1-xc2d.google.com with SMTP id q14-20020a056820028e00b002da9808b90fso3675523ood.7
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 08:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZJLKks7mMz5zAbTW1qfceg36EeT2Nhf9/lRvR9fz3nM=;
        b=nXk0k93/zcVIUREQUt57Ii1XtGc5diY/ebE4G4Y5ya1J/YRlKWjEyws1caPVNWxkGj
         0S+1Obs36kQnbWPoZcVkqxxFhT+Js9Xlaj+foce2iGE7tjIGH1S63iz18Ee3XEt6HcOc
         gcQ21N8DcJBofwkGWtnRFlCaMnob4/ohPIeO+B8DfTtEkcmzFd+SbwPxhLkhqyPCW7sF
         5tdrqGaNiGh4R/6jm2a1K0kAAQ7uWBMjqmkOwLxNAbolkuEfrLspxvmtY9IaITSQtjSE
         30gHk90RyANmjd+HM4voQK7fwCS00mo4a0HCxWnhKDlPt81hDX7Puumu3zgsM2ys4ssS
         DocA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZJLKks7mMz5zAbTW1qfceg36EeT2Nhf9/lRvR9fz3nM=;
        b=k/VpdDKnal6zhPov+J63mlc9S/8yvi3pdi+1aofsAKVkL/zWbn7ZUdiwsdklHTLR3+
         F3JdZnNFCHe4kwrQ1ThAXUY+BNkkNP+pjzLcS06NtSKLxXXUTv+c2NXcdbQrAGKIJvsG
         kcCDctyG+ouddxKxPX9AZF4XPOj8dqQJafzLn2mZdmCNpIZ2exwY0eZszCjQaGRar2mE
         y9deCkzIgBu5sVFPkr1Atms+PIz/2vskOgZ2Br3BPJ3ICr47Y7pQSCxLQo+gdAzcrNpt
         0Bdq1NcTJrsFdh5GN3NVTNDKfGPCkUDbN8iziR1AkGtSQd8fjZFWyyZm3CZ7eMTpF6F8
         mQ7A==
X-Gm-Message-State: AOAM531fz/VsBq6c9jyhB0lBdk3TS/CWCByZjuVwZL+/qqjY7lsghUxg
        bpO143odVEpRSimbQKhX6kaZ5bUs9/mkbBF3WVxPlg==
X-Google-Smtp-Source: ABdhPJyVCZH4rsnx8VTd3EB+R7EDQUfR+emeKokFEvWa74elIyCVNst9si8+xT3Bm6Fdn9qSafCuz0Bj7p443QYPQjQ=
X-Received: by 2002:a4a:dc9a:: with SMTP id g26mr305294oou.71.1641831244122;
 Mon, 10 Jan 2022 08:14:04 -0800 (PST)
MIME-Version: 1.0
References: <20220106182518.1435497-6-robh@kernel.org>
In-Reply-To: <20220106182518.1435497-6-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 10 Jan 2022 17:13:52 +0100
Message-ID: <CACRpkdajaDmkoS3JkD6qSPQwV5JRPMiz8JPsins=4b3HGCoZCw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: arm,pl18x: Make each example a separate entry
To:     Rob Herring <robh@kernel.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 6, 2022 at 7:25 PM Rob Herring <robh@kernel.org> wrote:

> Each independent example should be a separate entry. This and dropping
> 'interrupt-parent' allows for 'interrupts' to have different cell sizes.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

This is neat!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
