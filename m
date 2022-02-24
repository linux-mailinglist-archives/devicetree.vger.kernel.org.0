Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF32F4C2AF8
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 12:35:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229678AbiBXLc6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 06:32:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230093AbiBXLct (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 06:32:49 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A9DF10459C
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 03:32:18 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BEA093F1F3
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 11:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645702336;
        bh=6QAB5G6wzlpUL0XVf4afDiAG1Yh+7YZL2RUHJwx8q4s=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=sg5N0qq9pjXmHo39o79rNRPGzZtuHSL3/+bpxHgc2srQxwXXNoe+EJOQeHJkOyaIp
         13Npqza9hW+aBB6NgAXY0WvQHE+LykdePkCUCbmB0dMUpenQ2rg4GEeZe9Jum5x+fI
         WYdZ93X11Me0+oACXohwMv/9dBP00WVlu3yhx0YyeaQ3YGsWbgqhJcK/4+J5S/xNKJ
         O2vaTMtE+9HY28AcIP5t8LeC1zGA9AJHcaJj1OJ9B5Dyg4zDyu+PIPKqCF9jEdDgO1
         I0Kt5hi0GncOLE2Bm0kAc9HSH84spDpZN1LECx/ZQaIAsJ6V8dB+FO81bNi8kdnYX7
         /fSqi9S+cAD1w==
Received: by mail-ej1-f72.google.com with SMTP id i20-20020a17090671d400b006d0ed9c68c1so1074784ejk.14
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 03:32:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6QAB5G6wzlpUL0XVf4afDiAG1Yh+7YZL2RUHJwx8q4s=;
        b=p8a7LTiMkTPLkZCo4t+45pzmK9y+CiHO6Mhl/dienW/Yvm6CBlk6TFe2NhQxv6Jld2
         x61PZiCjVTGQWM83lBc4qNITZsUsfawxlq13KcMjFuIyOeKGdH51/eIYb5r3BDuVxxJ6
         PldzrtnsOI73oFXq0Obzl9lHP/uOS+rzMYAaUfZ4nGTBKUBrC1wVTmHU5obE7NIXF8qk
         TvvnN9y5PdcOD+AKesa8vP3aIXS9FQ6n7veuViRPuacQF/jmOITVaTF7bxhW28y7QPFc
         Vyra0x2hKhVWSeefFPRDAxbRAHyagYUg+0pDqVHRcSeYScXwXNN4BKxYJWu8Ura9NjYS
         zKtA==
X-Gm-Message-State: AOAM532dvJDt55s0MJZ6q7OkteC4/Q+ZX5WsurqWnm58aN0sz4kXyVjm
        MkclSfcm0KNfF19kRJyLKtDqG+dEJE0U97lRA/9vxrWua5mb6PwpfiqBQVO/SA0B1G6KiVG/Z83
        /XFO1eXN8nZ8fle2KfYs9Wa8IA+ihpH6FSu6aitc=
X-Received: by 2002:a17:907:12d5:b0:6cf:bb0d:9b2f with SMTP id vp21-20020a17090712d500b006cfbb0d9b2fmr1956417ejb.138.1645702335155;
        Thu, 24 Feb 2022 03:32:15 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwzCHcLPyCC1s3Ik7qr4TIxyXVnkkXqNSDejNUcwQH9N3LVSxYrf8XbZW/XmE73MCY/Ws4QGA==
X-Received: by 2002:a17:907:12d5:b0:6cf:bb0d:9b2f with SMTP id vp21-20020a17090712d500b006cfbb0d9b2fmr1956410ejb.138.1645702334964;
        Thu, 24 Feb 2022 03:32:14 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id v30sm1216688ejv.76.2022.02.24.03.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 03:32:14 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-samsung-soc@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: fsd: Add the MCT support
Date:   Thu, 24 Feb 2022 12:31:38 +0100
Message-Id: <164570223367.241583.16227180262128695261.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220223171858.11384-1-alim.akhtar@samsung.com>
References: <CGME20220223170727epcas5p20066f8455fa0ca98323ac286dabc90ec@epcas5p2.samsung.com> <20220223171858.11384-1-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Feb 2022 22:48:58 +0530, Alim Akhtar wrote:
> Add node relevant to support MCT, which is used as
> one of the system timer on this SoC.
> 
> 

Applied, thanks!

[1/1] arm64: dts: fsd: Add the MCT support
      commit: 272a253338f91a192defc124930030369b2a7fd4

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
