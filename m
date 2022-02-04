Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39B7E4A9BB5
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 16:12:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359605AbiBDPMS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 10:12:18 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:51114
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1359599AbiBDPMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 10:12:18 -0500
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 866013F1C1
        for <devicetree@vger.kernel.org>; Fri,  4 Feb 2022 15:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643987537;
        bh=00B2qCrzeyDH+uH8/dw2Cjp7WLU/oGst7SCYDobRn64=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=BCkUv9IbPOga9gOpY9oJPhSBbcxhj+DYzEy+/Y+Q/Unhpry8DFhlU92SFNkXDv54k
         y57Y5I03CK0PoFunPH0AYIN1d2yKvVxRi1DESuuIrMEl7F9fQ38txrvf9A/Ot8SFFY
         +iYJ5+wFoftm2JZgt8R9j2v/JO63CMOHwQm6f+X1xf1avczSZpQYC4ETrmoiopw1cL
         Tzju+DBIYWG+BuPWC6mSbdzxcm+ooFuj5n//gKPQWF+Vs/l1tSuluUwmmW1IyvZxEG
         1izJHNpBRt3bmM4aFq0njqm6oVzsfOO9EVfMMg2lGNISRroLZrORDXp9UmmRp5Dghu
         4kzbWc2PYJCvg==
Received: by mail-ej1-f71.google.com with SMTP id la22-20020a170907781600b006a7884de505so2703442ejc.7
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 07:12:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=00B2qCrzeyDH+uH8/dw2Cjp7WLU/oGst7SCYDobRn64=;
        b=gWOxNjuITYOG+hN/TdiqOK2LoJ2TwmmYQXaaVlmRVWenaBPOiLv9V53OtSl8M3GhEA
         HG+1aTDMfV2n8PHr3K53N94nK/J4tha/icVwN0p7jdFDGPivsmAiq9a/uoFESSg3qpTP
         R701SvZPgBPcDI993+tZbVPO8gI2c4CweCEmMEam/br2d7xBC4H6Yi9gE45t6sik8tLM
         IN3TajefcER+yc0uEZp9OPT+911bCjEnZHR/HtON9NGDGOUzV14UiQS+ii38TOzZ+04N
         7XzRPoTN0tTpNlyl6zjWvRK/pd45XhaetCjlf9Y7vfhTm8KrYGUkZtug3EJwIG6+Zxst
         Hw/w==
X-Gm-Message-State: AOAM530RLNntO5ujG95/foGJL8a1ucb650+EUlHyg5bb8B7BjXDbKAT+
        3Uf68G2pIU89OHXaJxMJinb0j5X8eApK2RaBeew/uZxMjFaK624p+T586kf5GcPimOA9SYyIlzU
        eBGYvjdTmLsQ5vE0gq34Go6zuAPTeDatkpjrNsZI=
X-Received: by 2002:a50:eb46:: with SMTP id z6mr3423800edp.229.1643987536917;
        Fri, 04 Feb 2022 07:12:16 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxb7QZV7uykHzljTBp1XTCcqRb+uEgrBmcfwCNo3JGwEadAja6qKSSvp1JuF6RGg5AIg+FgSQ==
X-Received: by 2002:a50:eb46:: with SMTP id z6mr3423779edp.229.1643987536749;
        Fri, 04 Feb 2022 07:12:16 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id h15sm757748ejg.144.2022.02.04.07.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 07:12:16 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: exynos: add charger and battery to p4note
Date:   Fri,  4 Feb 2022 16:12:12 +0100
Message-Id: <164398752918.81715.4450526381656731657.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <d7f7b0f87a18b5cc44ba97390461c15469439829.1643919230.git.martin.juecker@gmail.com>
References: <d7f7b0f87a18b5cc44ba97390461c15469439829.1643919230.git.martin.juecker@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 3 Feb 2022 21:29:47 +0100, Martin Jücker wrote:
> Add device tree entry to support the Summit SMB347 charger which is
> built into the p4note devices, as well as a simple battery node.
> 
> 

Applied, thanks!

[1/2] ARM: dts: exynos: add charger and battery to p4note
      commit: 38dfe352b5a56df9cdf3e40ec5a09bb539757352
[2/2] ARM: defconfig: add SMB347 charger driver for p4note
      commit: 300ccbb25491b4d4aa67098161a953ff7652d650

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
