Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 556EC4F1091
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 10:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377930AbiDDIOk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 04:14:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377925AbiDDIOj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 04:14:39 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 591F4326C4
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 01:12:41 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id bi13-20020a05600c3d8d00b0038c2c33d8f3so7195602wmb.4
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 01:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U1Fdq0DczHkP3YF2vj5LPcppX6TH/kpuXtMffHmyoZQ=;
        b=ccWa7BZsRyHZFk7vojdgTbQYkDBDeSyof2uyKirvXqz3ERteAC5pvLBFmlrdNffaDj
         p+h/6RjcW3bvMEt4clBiGuxS4MnUtbhEuG6ULWRAL2wzcrUkKm7nekYS/fEmLz/nNeNu
         rv9ohiz3Y5OUaUaCiliDT7BFQiWeSfvOCBU4JEOkxtTWkO+lb2KjOob3dSsPWNC+WSym
         Xz41jfw5uuRnvhkaF78QwpwQTRVkpeaag5/JyFtzF18D3ufw8rxZ/9ZKSIGOMCBuaqHz
         1aFgwncugW9a6H6tmYi7vFWdcmEJ0e0LgjX57qkWrFqFewDBYMps4GhpSaLFvMGpi787
         jtLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U1Fdq0DczHkP3YF2vj5LPcppX6TH/kpuXtMffHmyoZQ=;
        b=VPYzBEiT1WmV4sDURNQPGeFxPKvAyWMQw6LMuhz8InLZApMkrgsOIID+arc2q3OKYw
         GvNGhE6MjV8Ss4/EIEkdvvarxe0v96GQFno1PJ7ST25DBQ/WP2WWVAMBFOvCJ3j61RyC
         DTkizhoJW5tUnMiuMmVViWtlUToH3/cskReFlFpYBKD0mub+TRKEypA1jg2RwRRXYapo
         Q7/Bm/N+bOfPDDoBseV7uyNlkmN1CNnuGLnsHV+3DPA+WrUgidYI4RL1ZtWzuRJS9Rmu
         mnkcbfYzfnaMOnVNtGks1kGY1gFl/J+rO2/290Kep2V7q1k3+gpiaa8KWzfpBSM4Cqx5
         F9XA==
X-Gm-Message-State: AOAM532zPxojr5fEhmUKXbx8bDs0qT4xAhPYDCHqwhtmK3m5ahqtm8d2
        buGrGFtp7V/sGWYOQUAC/7k3Kw==
X-Google-Smtp-Source: ABdhPJwWjslOc4kHuu+OQclfFY0BZN3W5Rz/UbNzTFSp4pRRp+RHXzsaOZB05j1V4cEt05SxETfHWg==
X-Received: by 2002:a7b:cb87:0:b0:38e:7464:f796 with SMTP id m7-20020a7bcb87000000b0038e7464f796mr1674221wmi.133.1649059959885;
        Mon, 04 Apr 2022 01:12:39 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:1add:1b28:2457:eb46])
        by smtp.gmail.com with ESMTPSA id s12-20020a7bc38c000000b0038e708d163dsm3297510wmj.0.2022.04.04.01.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 01:12:39 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     krzk+dt@kernel.org, khilman@baylibre.com,
        Shunzhou Jiang <shunzhou.jiang@amlogic.com>, robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>, jbrunet@baylibre.com,
        linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org, martin.blumenstingl@googlemail.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V0] arm64: dts: add support for S4 power domain controller
Date:   Mon,  4 Apr 2022 10:12:34 +0200
Message-Id: <164905994877.1805420.15799716011771473596.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401110306.3364551-1-shunzhou.jiang@amlogic.com>
References: <20220401110306.3364551-1-shunzhou.jiang@amlogic.com>
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

On Fri, 1 Apr 2022 19:03:06 +0800, Shunzhou Jiang wrote:
> Enable power domain controller for Meson s4 SoC
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.19/dt64)

[1/1] arm64: dts: add support for S4 power domain controller
      https://git.kernel.org/amlogic/c/085f7a298a14ed2a088c8ba01d2feda2499cbc72

-- 
Neil
