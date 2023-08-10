Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29B96777EEC
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 19:15:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234648AbjHJRPx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 13:15:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234549AbjHJRPv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 13:15:51 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 060FA26B6
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 10:15:51 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-686fc0d3c92so870335b3a.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 10:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691687750; x=1692292550;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=32ZUxujmpJSome/A65uTZcodyyRgs2VAo6x5w7mgBVs=;
        b=i334aR4IxHtdDVJyaohlWVQc/j6a9UBCpsdp505Mp+Nqc/w88jbtG3lDOm0QccRaTn
         EE9VVpR61NeTtvq3wmXIugtlKvdqmaLkcl4wUCmoQNOi31juPf+aIPdRfi3OHZStFukc
         CRTnjtaFum1b6ji7lqhIGumq4W5EqdTneSE/D80/DAivYL3PrJJMnTGZ+qXKkyxznMTu
         etUFc8KkZyPLCBQMzqII/B8SPLFpbIXFmT+kM9vYnSWXkXltJjlFOrYIPirc6V13s5iT
         SWTV2U4xmAGIOP/Gwf4dw1U0wYCdHL33GYx0f4g/k9zNt1QjQJZqmC+oshvuuO8FKhSh
         V1eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691687750; x=1692292550;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=32ZUxujmpJSome/A65uTZcodyyRgs2VAo6x5w7mgBVs=;
        b=ciNRyWLQdjgPC6HgGnFzIMlzNZ4J8shHP+R1xz0c9i3LVEGwdfIgC4jtVgkLETtEoE
         nq2osNB/B7AFYsrHnZ8aJWPiM+toTWlywoBeNAH4SFkB6+smbLAHPLkUJO08nXcNu96e
         KtJJyO6CMxI+iiITOLDyqVKcKANVvGdjgJTdQHDqbMshzO2wmvklxtl/h/m5xsY+7aZ0
         c/RGPJG2XAQoQaJoXC1a1Bz6AfioF7XP8s6ZOgIIK1u8tGOtC/v1NufeThcaDnGFpK7t
         2/XluAN59HDjRYXz4cwk27RzO1inZMYOmrWgTjuL71FeJ5jh9xt6Ps0by3X5mlmJGv/r
         o3lQ==
X-Gm-Message-State: AOJu0YwEyBC2VCwriYVDbT9REWDLM9SdIWiICpY4ISALZ4oc2/cPmITr
        wCnWhw+KhZQ+FVIshIs1S+P2Hw==
X-Google-Smtp-Source: AGHT+IG5ZhcCCuUTJM3PLmOanfaqm5LUUpx95RMWdP/92q4df+YcFYOeFmSDTKb9jFQ4nAcOPOpkRA==
X-Received: by 2002:a05:6a20:8e12:b0:138:836c:5370 with SMTP id y18-20020a056a208e1200b00138836c5370mr3272854pzj.42.1691687750478;
        Thu, 10 Aug 2023 10:15:50 -0700 (PDT)
Received: from localhost ([75.172.135.98])
        by smtp.gmail.com with ESMTPSA id o12-20020a1709026b0c00b001bbc9e36d55sm2017444plk.268.2023.08.10.10.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 10:15:49 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: meson-g12: Fix clock order for
 amlogic,axg-tdm-iface devices
In-Reply-To: <20230808161755.31594-1-alexander.stein@mailbox.org>
References: <20230808161755.31594-1-alexander.stein@mailbox.org>
Date:   Thu, 10 Aug 2023 10:15:48 -0700
Message-ID: <7ha5uyes3f.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DT maintainers,

Alexander Stein <alexander.stein@mailbox.org> writes:

> Binding specify order of clocks as:
> 1. "sclk"
> 2. "lrclk"
> 3. "mclk"
> Adjust clocks accordingly. Fixes warnings:

I understand this patch is to fix DT warnings (and thank you Alexander
for fixing warnings!) ... *but* the underlying requirement being
enforced by the schema here seems completely wrong to me, and a step
backwards.

Sorry if this is a FAQ someplace, but I couldn't find an explanation for
this.  One of the main goals of introducing names in the first place was
to get rid of ordering requirements.  Now the DT schema is enforcing
ordering requirements, but the drivers don't need ordering, so what is
the point of enforcing ordering requirements?

Kevin
