Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33777497372
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 18:10:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239155AbiAWRKq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 12:10:46 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59230
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236887AbiAWRKp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 12:10:45 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 35D813F1CD
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 17:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642957844;
        bh=9aUVeDHijgpk/gPdmhnxkt4h8TZ5fsPsv2xLl017ipQ=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=kxsbD59MKnKE0BKHluSbvnA6KjA9B/c7mQurn6ws7fLiG2F5YhKg9i8eEBn3zzH1U
         KP038bCJYkQNYji/vrrfKejBXiL+B2pYN6lZbF5BE5Fiv159OTWqiMRySLfgelIPDv
         qoasYt1J3E9JUS7b/wpJyfMmB/XXV8PsKsCPXMHsTa74Q0oA5MAnF7vEozC387DOaB
         ewy9AhWVpuPkMzmemuZnR4VXavIzXRbSA7U/6n/L0VrcfjUvVnZI2PjpbVKYooZB2r
         H0FZeXg2hFb39FF9T8oyDOC9joGhHPt7x0UOZ3o6LKX8AcXWDZveqLQftsynU29BPB
         Zy0/bk5ugTTTQ==
Received: by mail-ed1-f72.google.com with SMTP id p17-20020aa7c891000000b004052d1936a5so7246313eds.7
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 09:10:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9aUVeDHijgpk/gPdmhnxkt4h8TZ5fsPsv2xLl017ipQ=;
        b=KTGytu1RsS8p6pimAa8SPnNpnYKwuAG/dH/wFvz8qSB716aleo/HDEm3ySzh6hIK/1
         gVbrK9VUSzVtPtuDBvTjkAKtD6qGBi+agNwJG+pY05kDoq0iiZaT7iZrLQt3d5NJAaXH
         iLX38YHHSJYtnKwajcVQHZ/PUPdKXe+njdvoM+fyknhvLCgqve0ZmsmcZBrqerJTxlFT
         6OMXk0AwU6U1rdyRHzKEcI2ASx+aLzscWTmuaEkUZY0uxGQkF1+LGWw+XZYdi+h+0A6D
         ce7xT3besRS6ThZ4Bl6vedpXITt1RoQMBkkTdqC9A21k95Krr6zYGEvHaDLO6lvuYPJV
         QP5Q==
X-Gm-Message-State: AOAM530x10nxD9dPE6mdyVfFZAotIwZglqOwq65m2cnIaya1r9ZtL1+c
        bZGkgjDe29NM+OLzxnPMcDwlF4SEcvKnfTahSC7Kp0OZo7F/kB52Sym3+/u8rSt7wO1NehbrNGS
        akUP/djKDwv6Knxf5Qjg8bCyLfeuvgMILwBYQyDI=
X-Received: by 2002:a17:906:4ccb:: with SMTP id q11mr10028601ejt.398.1642957843643;
        Sun, 23 Jan 2022 09:10:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyMefem0jCf3PJq8lnGfLau04Ms1Hd+SIUWXl64m0Pg5L2zvBjINugQgs92nw/gH+x7IuW1rQ==
X-Received: by 2002:a17:906:4ccb:: with SMTP id q11mr10028597ejt.398.1642957843504;
        Sun, 23 Jan 2022 09:10:43 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id l2sm5208665eds.28.2022.01.23.09.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 09:10:43 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sebastian Reichel <sre@kernel.org>, linux-pm@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-samsung-soc@vger.kernel.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Mark Brown <broonie@kernel.org>,
        Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 1/4] ARM: dts: exynos: Align MAX77836 nodes with dtschema on Monk and Rinato
Date:   Sun, 23 Jan 2022 18:10:36 +0100
Message-Id: <164295777264.25838.2090071538223607341.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111174337.223320-2-krzysztof.kozlowski@canonical.com>
References: <20220111174337.223320-1-krzysztof.kozlowski@canonical.com> <20220111174337.223320-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 11 Jan 2022 18:43:34 +0100, Krzysztof Kozlowski wrote:
> The newly introduced dtschema for MAX77836 MUIC requires proper naming
> of extcon child node.
> 
> This should not have actual impact on MFD children driver binding,
> because the max77836 MFD driver uses compatibles.
> 
> 
> [...]

Applied, thanks!

[1/4] ARM: dts: exynos: Align MAX77836 nodes with dtschema on Monk and Rinato
      commit: 8d6f5af71e2ada6214df028441d479e1925e105b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
