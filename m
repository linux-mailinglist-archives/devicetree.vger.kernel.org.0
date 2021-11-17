Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0C9F454358
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 10:13:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234841AbhKQJQV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 04:16:21 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:51626
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234837AbhKQJQU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Nov 2021 04:16:20 -0500
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B69583F1A9
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 09:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637140401;
        bh=+Pz5oV0vIps7oI4JF77ZcmfNUeLTZeUmUwPk7qQg3Ok=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=px6A4Poyx1kTV9UbeMDR4BxowtM9C6eAZ7bxGteZkjwLnbeCwZXm6pTBpU7EsWUrb
         SGKS3cLdQA0ePxgHQWserhEDvpGSFAVRj2mKFWONAaxD2pvUH8B+Gs21TMwIvJ+0SD
         G8R7krS5GgR8TLLi+UIuKtj2A8NF7Z5ixhyq9CZ7kTBp1N/AKWame5AyROmwbuNenU
         Xi1k2QMu0AL8+9oMrvy4fU8kq3aCcPnHaJ/HeAV31ALBf7Ii+2hk55aZt+qju+be8W
         5rXV0IKkISM+hF0TyztQedK+3QAFVqsfY2s9t8qVIVHms5SQ0EctfSqKq3sgScavbs
         Bax//iGbMqpxg==
Received: by mail-lf1-f69.google.com with SMTP id q26-20020ac2515a000000b0040adfeb8132so1034154lfd.9
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 01:13:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+Pz5oV0vIps7oI4JF77ZcmfNUeLTZeUmUwPk7qQg3Ok=;
        b=vPsp3ZfF12DYJ2lsXXyDmNyqO3hcy71Y09GMOo0X/SxC0FCpmkdN7Fa6k3s9e6Pq7L
         Ah826jG2epwEOCeEdeoexaa3wSndR1Dw+nx4m2vAD6iHsg4XQnH5iqZwsJhcQT4Ux3ia
         P834tXXFNr4BYSlAw8NIprWC2t9C07nIU3T4siKFvfVaLZ2ci2SHBWyadao5NWe7rVuZ
         LTEphgODhooJoNt1GSfch+o/Lswat/RX/NMvLkhXVBpmGrAS75LcP2HlER2InQMta5oR
         MI92MTwemOKq90+EEvefSa04ptGdNbxTwGEgCNAG/jaBTIlXMg7bZskdyXCX4y4Ma2rr
         Ft8A==
X-Gm-Message-State: AOAM532djNt0oxOn5FYRcrc02uAewK2j3OuCWqukW0cspzFdGubpqXh3
        II8zIDWwrG5CRdlNwdSrh1N32862c4kpYNUgdDFsf/+9xjAcSH7moR/p9KEmy900+f08gWU3Odf
        w4/G6RJHnlTBznP5G8fyQdd1f1izbWMdbkjdJ0HM=
X-Received: by 2002:a05:6512:23a7:: with SMTP id c39mr13970874lfv.655.1637140401013;
        Wed, 17 Nov 2021 01:13:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyB0/kdXvyj/H5Xa+AJHrAoJOSiARTtsCV8oXv7g7kGvUkY60FM5ArXRjc+t4GWkAdYC5p7Ww==
X-Received: by 2002:a05:6512:23a7:: with SMTP id c39mr13970848lfv.655.1637140400852;
        Wed, 17 Nov 2021 01:13:20 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id o10sm2091331ljd.30.2021.11.17.01.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 01:13:20 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>, Li Yang <leoyang.li@nxp.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [PATCH v3 0/2] convert ifc binding to yaml and drop "simple-bus"
Date:   Wed, 17 Nov 2021 10:13:18 +0100
Message-Id: <163714039332.51047.16522971360424993848.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211116211846.16335-1-leoyang.li@nxp.com>
References: <20211116211846.16335-1-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Nov 2021 15:18:44 -0600, Li Yang wrote:
> Convert the ifc binding to yaml schema, in the mean while remove the
> "simple-bus" compatible from the binding to make sure ifc device probes
> before any of the child devices.  Update the driver accordingly.
> 
> DTS changes should be submitted after binding/driver changes are merged.
> 
> Changes in v3:
> - Rebased to v5.16-rc1
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: memory: fsl: convert ifc binding to yaml schema
      commit: f91d84e2ed0d661132fc0f46758daca866dfa55b
[2/2] memory: fsl_ifc: populate child devices without relying on simple-bus
      commit: 98f1323959b8d717fbb090f22bdcc5ad768c6dc6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
