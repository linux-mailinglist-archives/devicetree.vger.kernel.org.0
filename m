Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 768DD6FB670
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 20:50:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbjEHSuT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 14:50:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjEHSuT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 14:50:19 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 741D45BAE
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 11:50:18 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1aaef97652fso33409825ad.0
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 11:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683571818; x=1686163818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NwmXazquFgYewpMm0oyr12MV1RH2d/0n3s/uwsuicZY=;
        b=o7YQBNcd7FNyNVVig15sP6JnMBx18jTNFIeWzriudZjGSKx4rQnJ6r0W28jdDo2Mr8
         g09ahLdem5loai/jNExBdiAI55DZEQn8vAESUn7itWOT0sP0Edd8VBiQqsaIabkllEVU
         x6ulnneQK1PY0xHAsjUsz0uN8X7Z/vjXktjtjSCqRlyNZaWsnD7uSX1v7q8hQNX+1DAy
         ts6vOZiGU5lErV0G6QzOwgECnu97TlsM+1LapYE0EMBfXsI97KyLL79Oz9Vq2AakscG5
         gfiFQa9FaZZ3evltFdedxUaQ0ckS6sk6ecPFyrmN7zBpasiU5vt0C13H9hnQ5rggZKqC
         iXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683571818; x=1686163818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NwmXazquFgYewpMm0oyr12MV1RH2d/0n3s/uwsuicZY=;
        b=fSw+bHBo761fFobJNYWutZwMKB2wwkpQ7QIVl3iMqfda9DsyD3DDUoQF1wuDP8dxqt
         zwAlXLxqS4zQzirK1Utw8K5INaBMYD6KQSFThZthVlSNXUGWtZpz2FknBl3cjGW66rBP
         3IlY7BU6I9nad6zgXo9PoKHsKJ7is2Ewje7NJfEMEgOY2T6mWoSdenqryX1OzRnXbpQ3
         185eYSOBCVlTOc9dkn1uVRclKUBE0JpCmQRt5bTrNo4nj/LvOdWTKwDjj6YO1gQ6fGE1
         t889OrfvZGuNvB+erOuwHV6QotkV4Gikm6O+EPX3ldY7fPGbw6egH5VdjWwtsbHwHEhs
         kZrw==
X-Gm-Message-State: AC+VfDxErBeJtJay/1pBJm0pzKGjuxN/wcNf6JGafw9DQMTmIbnT7Lf5
        hLo5Oyxd6R9vlO1b1Hj2e5o=
X-Google-Smtp-Source: ACHHUZ7k86yv7PsJM7aAuTCAhfJaBcGH3jMOw1zVAxRFetB6J2SurufZijjTXecQprMdYRkG2IUh7A==
X-Received: by 2002:a17:902:a9cc:b0:1ac:8837:de9 with SMTP id b12-20020a170902a9cc00b001ac88370de9mr2036754plr.3.1683571817966;
        Mon, 08 May 2023 11:50:17 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id t13-20020a1709028c8d00b001aafde15ff3sm7578442plo.293.2023.05.08.11.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 11:50:16 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: Relicense Florian's code to the GPL 2.0+ / MIT
Date:   Mon,  8 May 2023 11:50:15 -0700
Message-Id: <20230508185015.1638634-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230503121611.1629-2-zajec5@gmail.com>
References: <20230503121611.1629-1-zajec5@gmail.com> <20230503121611.1629-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  3 May 2023 14:16:11 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> All BCM5301X device DTS files use dual licensing. Try the same for SoC.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
