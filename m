Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 593C8629015
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 03:54:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232355AbiKOCyc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 21:54:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232334AbiKOCyc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 21:54:32 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EEAE13F29
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:30 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id ud5so32946977ejc.4
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EtuML3tGwSGmmDRG9aMITAp3PQr3a8UP4pyk5lBaBpg=;
        b=GgP0Zp0zjsAIFXrQ6da8g6B9L/OXMWFPHE+YUFNZwThbPtkKbnrAE4OoQFe6i7ZTRQ
         IZOY3ZPSup9IYoLFdTTLhla7sooUk5ThkYhTAkmDB+PJw24Ak4s5JceC4IBfDnFfcXlr
         1h26PQs5avIH69kaa6SQBwTetFLFw/sOqfwaFs/htHNnWdCdIqFnj44Szr3Uq4KGEPdU
         pm+tEt+78fUoPCC+B8ICETIzPB7M6lT0KM8PVxT9KrZiS3BSQ2EQWWNKuJ2AtEw9gEU/
         9ICc2HqbQEVIJcP+u3gcvV0BWRpRGEKOSKmXorRgRoP8RJmfQCVb/c13UF9Pwb2IORzr
         kJOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EtuML3tGwSGmmDRG9aMITAp3PQr3a8UP4pyk5lBaBpg=;
        b=VUF0z7gwvJnqb+cH7Ne0vBK5zkhjDOB2toY9VpcwR0crFya4NAbX7NjzOCOqbo9cB0
         3DQ9H8Xd+p3U99RThxAcMwJdjd5QvjE/gX0Zzp5XOXHgiwUruHm+3YIikV/0cx5YvbNk
         DXm5u5WEoSuSEyoAkcnlOZkADG63KU6WMetA1lZX078DKKPf5zoS5JVBfZA1C+EtKXNe
         1uKLAlJpjAQFgVEHa2BY8GFwTRZPI6HvYORP30yF0JwooCaULnwH4y1thYG7FfdD+8Fc
         T5y7hk0jDWYhFo//lA9aQw3WTFL1uc97STOE/WPP6OkY7AmACH9V1JDdDwULDxO+ZSeC
         +ZFA==
X-Gm-Message-State: ANoB5pmX/tI7tWyaytEUOvu4ToqhZUmBe8hAXsf6Mc4groAtdjZibrYS
        hobfROjVmY+STu4I74aQ9UcZEA==
X-Google-Smtp-Source: AA0mqf42ZULz5pw3hCAwedpvdQHrwUAFq1eHXZkhWsu44D5bmTznoQdRFNLYDYRUpOkRTJ726ekt/A==
X-Received: by 2002:a17:906:1cd0:b0:7a1:6786:4566 with SMTP id i16-20020a1709061cd000b007a167864566mr12225821ejh.433.1668480868948;
        Mon, 14 Nov 2022 18:54:28 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0073d9a0d0cbcsm4861177ejf.72.2022.11.14.18.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 18:54:28 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Subject: [PATCH v2 00/15] Initial Mediatek MT8365 SOC and MT8365-EVK board support
Date:   Tue, 15 Nov 2022 03:54:06 +0100
Message-Id: <20221115025421.59847-1-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221107211001.257393-1-bero@baylibre.com>
References: <20221107211001.257393-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds minimal support for the MediaTek 8365 SOC and the EVK reference
board, allowing the board to boot to initramfs with serial port I/O.

GPIO keys are supported, MMC is partially supported (needs the clocks
driver for full support).

v2:
  - Add missing dt-bindings documentation
  - Small cleanups addressing issues in v1 pointed out by Krzysztof Kozlowski


