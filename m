Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71E9F623276
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 19:32:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231126AbiKIScO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 13:32:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230137AbiKIScN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 13:32:13 -0500
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB68B388E
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 10:32:12 -0800 (PST)
Received: by mail-qk1-x72c.google.com with SMTP id 8so11487833qka.1
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 10:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OSLH/Ky2WGtp8iLOWX3Y+bun19HcLK+kKc9Poe4RmZM=;
        b=EfbK/VZa5aiHS3SV3LVG9nTuOCJDu6GWmxc9I60cJu82ps9KQAmsaZEzsEGcPYa1UG
         imm9JA+wdZzzKz8sED/vgkG4u9gnt9zPNRSVzk5PJAGDBKVZgALMWWPzvJsWTajbYeYN
         a3HFq5fi4mZhFzFNe9EKu8HWHXW8BQexKrd05B0K/gYPB2Cixgyt1nax8uFm6K/IPHFk
         BdNfXgs8+7BdwgIXu2lnFlBJin82I4PyYF9cQxs+v1X7sCEJUi915jNf4vJTqQCgoglf
         45hPQPan2d6Wn9n4lRLv8OELB88JpXV4DsEn0LeMlszS+NVrNLoDxEQlJFvmjkfTkRZH
         e6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OSLH/Ky2WGtp8iLOWX3Y+bun19HcLK+kKc9Poe4RmZM=;
        b=GiIt2Sqlw5CKuKFR4EbpCExF4XHVjKCMyflyRdfBcbVh6XTt3mkDR/Cli22jm67rLb
         R2b8G48LUWsz9sUtucO6VnLC9tvq0wftX7bpjZoOAbqTae4OUdw8Gr0iKt3buaGMmogU
         sCoPI0WE54KfjClKfGMzlRDA5BJOFFGKfvoBsJH8Sn01jmjnl1jCxVKOtBeDvU4nFLXC
         G07RMRsFueBw/Axi/Q18+cV+MY0212MtrKOnOE5AEszPy+KNeyhHF3rWj9vDwn0rUpZ7
         ujNwo4rMLZzO00CUm9xGXwUZBZk8X2SiCbShlNKJTYtPFzT4vPyUr5elppDoO0uhQJt4
         oxwg==
X-Gm-Message-State: ACrzQf10V4V5XY4rgkX7wUcXX8Xqtv4F1kPy79vdRFa1EXyByEgh5/KW
        BGk32MqejtL1KtisMkMGCmU=
X-Google-Smtp-Source: AMsMyM4KVPsOITTh7x5/XOWbvhTCpr14Fv2IUV8ZOlYfxO9kPBRJR/Vx5oTGXg7yzt2n4g7OVHn34Q==
X-Received: by 2002:a37:2cc6:0:b0:6fa:3916:4213 with SMTP id s189-20020a372cc6000000b006fa39164213mr36441448qkh.449.1668018732014;
        Wed, 09 Nov 2022 10:32:12 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id w1-20020a05620a444100b006bbf85cad0fsm11525076qkp.20.2022.11.09.10.32.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 10:32:11 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Correct description of TP-Link partitions
Date:   Wed,  9 Nov 2022 10:32:09 -0800
Message-Id: <20221109183209.880538-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221108110708.13693-1-zajec5@gmail.com>
References: <20221108110708.13693-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  8 Nov 2022 12:07:08 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> TP-Link routers have flash space partitioned according to the partitions
> table. It may look like fixed partitioning but those partitions can be
> actually reorganized. New can be added (or some removed), offsets and
> sizes may change.
> 
> Fix DT to use binding for the TP-Link SafeLoader partitioning method.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
