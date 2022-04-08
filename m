Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5338C4F8FAE
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 09:37:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbiDHHjf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 03:39:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbiDHHje (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 03:39:34 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 972271A54D5
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 00:37:28 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id n126-20020a1c2784000000b0038e8af3e788so3432102wmn.1
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 00:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jRSJ43BNMFoLLCxjT9gcbTjLoqoj9s2ngsROXDxCAvA=;
        b=VoLcKWHU9xcw9WIQojtWE8XKvVdLU66uArMAHRaKmNyLlLM/y/GlfENofBcET1ILPl
         csR04lcUwqrAO97+DgcwTLkEOZNZUNaj5pxIRkjQRgOqHTb0Scc/wuP5LW1noYBBOAIq
         oTA2wv167p+s/gAJ57KJ/4fVnUd75q/l8jrdpsfLfrtZALv9uIuKmiWDpEij8LjyfYRa
         tCeiO3DdZ1jMy2HsjIlKAWEyVHdw9aNAV19AP3W3c2HLlPfxDgiAqKxtgRRKE0sGy6rk
         mbEElUNm4bxvDGOb2sOeiseVfLFs2blEfyVJRcMopo96BqpNsYgObuRtw6zM7x+gqix3
         /VmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jRSJ43BNMFoLLCxjT9gcbTjLoqoj9s2ngsROXDxCAvA=;
        b=Quqd1vuWsgoGm+LqXUxm1MH+4DwKtweTsGgunCW1CtfNi4w6PhDqjrxEGMA5khKFnH
         fb5aKB453KrVIeNB3lQfpXprRLAzN42LMGKs3kn4IIwztViYBXKWnrb80ieyuJ0RXvox
         nJ2WSQouBNaBh9sAnw2BL2oCN5atDPWYnvTlcVqgoYGclkHznGzUzrisClS1zhZHY0nM
         T6c5VPITC8/dvKSjSutmKlv+WrHAJ+qEL1BvDK9KCWM1SxPSKktJHUWP1y7XbCHcjblf
         t5RSOU3OXfszUDPQlXhtGX/yhNiz7eQa9Xlgyc8DPkwV5/wXNsTYZdQeKdrPfhG9HSC+
         TCrw==
X-Gm-Message-State: AOAM53309gKMD9gCYwPwF57GvzJZps3aBmv+u0sX507hhz+9Byt+Jexs
        2gZ7W14WB6KHIwuYUhJtLFiymg==
X-Google-Smtp-Source: ABdhPJz/4n4HPVlMMr3wTVeVUa7yREH8UY7gY3cf3RjQezwi3pTGIPat9rzAIy3N9vMZ5wWmX3NpRA==
X-Received: by 2002:a7b:cbc1:0:b0:38e:7c42:fe38 with SMTP id n1-20020a7bcbc1000000b0038e7c42fe38mr16265481wmi.51.1649403447084;
        Fri, 08 Apr 2022 00:37:27 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:eacd:ce6:e294:acd1])
        by smtp.gmail.com with ESMTPSA id i9-20020a5d5849000000b002058631cfacsm19415843wrf.61.2022.04.08.00.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 00:37:26 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     linux-kernel@vger.kernel.org,
        Xianwei Zhao <xianwei.zhao@amlogic.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH] arm64: dts: remove cpu compatible "arm,armv8" for s4
Date:   Fri,  8 Apr 2022 09:37:24 +0200
Message-Id: <164940343247.3642438.12121363573951062044.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408070901.26446-1-xianwei.zhao@amlogic.com>
References: <20220408070901.26446-1-xianwei.zhao@amlogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, 8 Apr 2022 15:09:01 +0800, Xianwei Zhao wrote:
> Amlogic s4 device is already applied, but cpu compatible 'arm,armv8'
> is only valid for software models, so we remove it.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.18/fixes)

[1/1] arm64: dts: remove cpu compatible "arm,armv8" for s4
      https://git.kernel.org/amlogic/c/9af9c58a099b57b818b15eca1e50cef1d222406e

-- 
Neil
