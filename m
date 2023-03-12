Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47AE66B68B8
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 18:21:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbjCLRVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 13:21:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbjCLRV3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 13:21:29 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 539A834013
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:21:27 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id j11so39859540edq.4
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678641686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3ViY92Y/qZQtdNrk3VZO6hJAbD2p0ISzkTrFK58wcFM=;
        b=cgmkoiNGRKV5+QFeySaNDFyOmNlMZtZskI5KsDBE56OFTmDwBPjb/pgEQIuB0Ex6cX
         QitVhDbWjDrN7Xx9qieA9Cf4CTb2IPI11/uMeD0YIS2hnhpuxsbzsIhhPvp7nihx4JYP
         F/M5NX0zpn5ZQ+1HXIq8JsGKYC95LtzmkvpJRluYcJubh++qYrQgfpYymFrz980jaKXm
         3+DkQ+RuLk5cZfBoaMrJSRJwkHEQfxQZnBtVQ+nj6BX0hlbgO9Pe81pgKhr+509GyJ3N
         KaH1cclcJmKI3VlKEjcZgU95dSEeLrUpgjDh/daQOZXTUYIy8EgLwaApZkQ/+G9qhAU+
         qBNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678641686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ViY92Y/qZQtdNrk3VZO6hJAbD2p0ISzkTrFK58wcFM=;
        b=UrSRw8EGf9FS7cqGPYBUN+ahfHwv0sYsTWDDQ/6M1f176BmsXceJt4LLnvRWcmxfyL
         2zgxGCWSeh/9D4vRlwYCh0SO5U7y5G1LUEr+jL8qW6ai4xcfoPziwO6A4g17xTGlSai5
         OJ3vERpxLUCyd03K14ICGHj4KIpdNwNjqyX8S5o+8W6cf17F6nMH4AT9POTMqOUIDnm7
         p35sxrnXBq509ZnqukryqIM0hg1tlyUSVqTFr0JKKCqu+GEzCw/37oARr5q7y/e2TCTq
         MnDuWoEH7x4vAK8Cl7yXaAtjwpkntlLqdhIdUGQi7ZBeucUfmb/hsawkcMS2rF5R1x/k
         NJjQ==
X-Gm-Message-State: AO0yUKUpvkujmmWbIfYKw9j0sQQ3juYN5p5YJPIj9pI9L6Kcv835nCyX
        6znk0qF+a4A+bEuOA4asrrwnxg==
X-Google-Smtp-Source: AK7set/P6SdCV5OT9AuJH30ut5cgK31LDEIQ7LHmvTALOlbfuf+3vlc4X2fi/LuaBLJBlFKvYx1hpQ==
X-Received: by 2002:a05:6402:613:b0:4fa:7724:a51e with SMTP id n19-20020a056402061300b004fa7724a51emr4708132edv.26.1678641685753;
        Sun, 12 Mar 2023 10:21:25 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id y13-20020a50ce0d000000b004fa380a14e7sm2055395edi.77.2023.03.12.10.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:21:25 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Olof Johansson <olof@lixom.net>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        arm@kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 4/5] arm64: dts: toshiba: adjust whitespace around '='
Date:   Sun, 12 Mar 2023 18:21:19 +0100
Message-Id: <167864162125.395859.16545103621407700070.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204606.833054-4-krzysztof.kozlowski@linaro.org>
References: <20220526204606.833054-1-krzysztof.kozlowski@linaro.org> <20220526204606.833054-4-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 26 May 2022 22:46:05 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[4/5] arm64: dts: toshiba: adjust whitespace around '='
      https://git.kernel.org/krzk/linux-dt/c/8a922b7728a93d837954315c98b84f6b78de0c4f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
