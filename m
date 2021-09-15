Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C883B40C0E9
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 09:51:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231644AbhIOHwX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 03:52:23 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:51204
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231611AbhIOHwX (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 03:52:23 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B66793F229
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 07:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1631692263;
        bh=ZPPsEFlwBfA1eTgPCoHOeJvzGiA/qDxA8TsO1MrIx1M=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=kxgA1swzHGix1op87iL2tXo15FWn6KitXrbp2PVJE1NaMxLRmKrxq4vunWTgvHNV1
         kNkcvf9+EDfPgRlLCTlWHm4KSR8J6SpDQwJ9loXnMwHcXXGiI3l/wcq4uYo1Urpx0n
         DosddVe8ed5DqHpZBivNrQ49rPlXxpVIHTMkxUGmQyHEtVyAiB6FlJ9JAtjvke5MxQ
         qfFU0wvfLsDB+Gg4TVdX67f2353UhaEsNPYFGHtWOVZBfDC34FCudvPfpBYKJ7SYmI
         s5XFg+lV6Y75STqbHP2P0fhD+5DBKlmpb6B1heO41LyJgKlYteYBmRnvBPJ9VZcgR/
         4FndKIQymA4aQ==
Received: by mail-ed1-f72.google.com with SMTP id j6-20020aa7de86000000b003d4ddaf2bf9so1112663edv.7
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 00:51:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZPPsEFlwBfA1eTgPCoHOeJvzGiA/qDxA8TsO1MrIx1M=;
        b=3tyH43lb2gEzAm+UjZT9eJIZdEKNCUUBlWCijzPhoKuqU16OXtfpvXemzNSgfFwchG
         OvzTj+PeBqp+A+90+WNg9njhyyOemP0vwwnYhj03Ai9l25NI/k20VUL89xsFgAnfP0gA
         RnhiPu5lel0J2v6OnytITBRZr1xo1d3Y4sMVYXr5Sd/D69wJuoDDVBOSqWmiwcWZA9Ub
         FNAyMtZwEjh61Z6JNYfL7UMd0+E7fyuGjLxlMQ3FHBMYOvoFKBzRdbxgJWZsCw50J9tr
         itqy58XNG27Iz0x6sAPVS6o7ALk4k0PY+7F+rtpeYrI+g+8E17n7SrhWua0lcx3oYUsV
         /jvw==
X-Gm-Message-State: AOAM531PXeR+3Q+nDRwRX62+xK1EdP3ZY4CNbjox5qLbXm8vsBcQWIa+
        yTwCFztF3UUqvA16CfS5ufZzLQML7OP2uhMgPOVvfLr29zHFVE7FTrI/aFnp5ZjCtFwhKazO29M
        JZkrjPiQe26pZJtE7NkpKfnSCFNK8uhnz1/E+Yx4=
X-Received: by 2002:aa7:db4d:: with SMTP id n13mr21505136edt.398.1631692263444;
        Wed, 15 Sep 2021 00:51:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy+WyCHnD+lfmB0FjoPiCQDeKX4wp21vo3/85j5pwzMA7v8zxcjkjew58uNFvFPYNOOjESEbQ==
X-Received: by 2002:aa7:db4d:: with SMTP id n13mr21505124edt.398.1631692263328;
        Wed, 15 Sep 2021 00:51:03 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id n11sm591922edr.51.2021.09.15.00.51.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 00:51:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-samsung-soc@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: exynos: align operating-points table name with dtschema in Exynos5433
Date:   Wed, 15 Sep 2021 09:50:56 +0200
Message-Id: <163169222223.16372.5421804464819720795.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210820081458.83406-1-krzysztof.kozlowski@canonical.com>
References: <20210820081458.83406-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 20 Aug 2021 10:14:57 +0200, Krzysztof Kozlowski wrote:
> Align the name of operating-points node to dtschema to fix warnings like:
> 
> 

Applied, thanks!

[1/2] arm64: dts: exynos: align operating-points table name with dtschema in Exynos5433
      commit: ee3b1f976c5214b79d939ecaba42f9e83b5efc86
[2/2] arm64: dts: exynos: add proper comaptible FSYS syscon in Exynos5433
      commit: 6de3cc6db06d2b9ba1e614aa58a413c9f8f22712

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
