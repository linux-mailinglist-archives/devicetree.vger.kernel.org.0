Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 84077DA211
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 01:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387412AbfJPXXf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 19:23:35 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:39388 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725970AbfJPXXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 19:23:34 -0400
Received: by mail-pg1-f195.google.com with SMTP id p12so148743pgn.6
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 16:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:from:to:cc:subject:user-agent:date;
        bh=9c4iNU9+F4vQHS+rhuD2o7V6W1JHSYQ5AwGRnQjJVSU=;
        b=cpwsSY3cxaC+AvG5nAQgo8Lxf3AgMApPUEHILYJe/GN2QimuVwPsACi/mIlXQ9GJbF
         lhj/NWfFuUvIrFQFbIkALnnvIA7HiER7GaYJRw+uTshHR/YZ8B9Ksnj6iDowVb0b3eYI
         YUgErSTcMlz3r6Taf6lfKRgOkl7htWZ1alVD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:from:to:cc:subject
         :user-agent:date;
        bh=9c4iNU9+F4vQHS+rhuD2o7V6W1JHSYQ5AwGRnQjJVSU=;
        b=tZF+lkvM1eYSeyglztt1EM5MZVIaBCsCXIxfrZKJl1FqfeNb+gJu2xd84HQpE9qpLb
         TwF6U0trT8Awwvf9BCNCm75TRwtMH/THHE/6kkVFmP/jBA8NlyKqVZ17aynKwnKfX3vb
         6SsBrUxk/tEkZkEONSbG/OWfdMFJq9HsJudUmEkT3uk9Zk0+qKE3RvSEVVar9CGTiBry
         I/FwD2Q3/2A/ao8N9IgbRaGqM8fMpeOGlVHxboUb4Pn1miVVQwMMP2fxEIukwfWUIx5b
         vOIhkJy4a//62ZLUDHPk2TTwPUbL12WbVJ+m4ayE65qjNmgtggx9mVK6I4xUTkB2e9ah
         LmXg==
X-Gm-Message-State: APjAAAX7NktujF85PbCg85gN8thVw0xxMzlf7si2BbMSuYAVFVQSLuDo
        /KwjM+Yv8X3OJt1iqICNXjyi2A==
X-Google-Smtp-Source: APXvYqy2MyiabuqklmTwv+qDXfjWg6yfSVYMYgw5kTlmIQsp6x1u9ITQHeC8Fgp9LYNpgQtsR8bvcg==
X-Received: by 2002:a17:90a:ab0e:: with SMTP id m14mr597622pjq.78.1571268213946;
        Wed, 16 Oct 2019 16:23:33 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id 126sm132231pgg.10.2019.10.16.16.23.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 16:23:33 -0700 (PDT)
Message-ID: <5da7a675.1c69fb81.a888.0911@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191016143142.28854-1-geert+renesas@glider.be>
References: <20191016143142.28854-1-geert+renesas@glider.be>
From:   Stephen Boyd <swboyd@chromium.org>
To:     Frank Rowand <frowand.list@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] of: unittest: Use platform_get_irq_optional() for non-existing interrupt
User-Agent: alot/0.8.1
Date:   Wed, 16 Oct 2019 16:23:32 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Geert Uytterhoeven (2019-10-16 07:31:42)
> diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
> index 9efae29722588a35..34da22f8b0660989 100644
> --- a/drivers/of/unittest.c
> +++ b/drivers/of/unittest.c
> @@ -1121,7 +1121,7 @@ static void __init of_unittest_platform_populate(vo=
id)
>                 np =3D of_find_node_by_path("/testcase-data/testcase-devi=
ce2");
>                 pdev =3D of_find_device_by_node(np);
>                 unittest(pdev, "device 2 creation failed\n");
> -               irq =3D platform_get_irq(pdev, 0);
> +               irq =3D platform_get_irq_optional(pdev, 0);
>                 unittest(irq < 0 && irq !=3D -EPROBE_DEFER,

This is a test to make sure that irq failure doesn't return probe defer.
Do we want to silence the error message that we're expecting to see?

