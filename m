Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 146864F1AD4
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:17:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351123AbiDDVTD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:19:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380005AbiDDSii (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 14:38:38 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3710A31376
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 11:36:42 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id 125so731383pgc.11
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 11:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MR5sgJ0RBe17EF4DBvi7E7MztqspgkBSRP4nI6J3GA8=;
        b=eEFf5XAyWkOT2LXNcQuac80gNKZIe+R2SokY09Zs/UFoD4qg7mpl3zDMkyZmrn06LB
         UUBUUg7Xj3rvMXPisRwcxDJoPZpm+Mkozwu1i6HIxZjZVLDuml8t+rjsq+7stj3M9itR
         DNCExlmd6KyrisU4qN0EP53P/L0MsNLSYZdAAsMhFu8wUVbHYR026tjCbltHnYMq2XsA
         HHuNVzsiaQBi7yy5IefZKqlTamLetg+x031Vi9TnJyvG/blKsHzvU586Cuay/HRbC36+
         ++A2kflm4VwY3jPd2RXURWpCvnykUgvMGiOrlE0ak4FNVAhdhF9lpEGFFux/diVsJyhc
         Ty0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MR5sgJ0RBe17EF4DBvi7E7MztqspgkBSRP4nI6J3GA8=;
        b=Qd1hLLC3nR46L+2d1Kly6Eo3jY5lWDq4A1wtsTTOn+26bXTzXi6AYHPJKeAOa/u2dk
         mLP9FKQ2QLBUeug6A7ZNHUFlflQ7ZqMU9E82pdLoBe2hywbAVpJSpXuISKDTNOgsZ5TF
         3o0vYvcIK23vNs91xD/twU1m/+IEY4s7S/sz/ZlkvYMLBnLuw84ZnEATYSOJj7gGy/R/
         1b1G7nGeIDmv5VMjtLsSEUWz9ZTGdn2jhPIv7LjWMVti+SEB//sLPV6klcU/Kz2rsMDb
         8N3djdsBt4gKas3E7BG5vtZPgXptpKF/MSpi5KHDn/alpY1P/m7tkM6gVvoSubN94ekf
         x7bQ==
X-Gm-Message-State: AOAM5318Rh9Dym+T8ndq4BgNMiA+C5b3ryT/oNwpa8KLacee+rqMnRMm
        Xzfrl/Q1YYiFeZm84Si0UJo=
X-Google-Smtp-Source: ABdhPJxpR4gfObun3yzjpM9Xiba12H/ae9+bL58UfEmxa39jKSQPi/AVsAyAHPJ3cITBz6zyWZ+qAQ==
X-Received: by 2002:a63:ec47:0:b0:382:692a:dc04 with SMTP id r7-20020a63ec47000000b00382692adc04mr1037389pgj.352.1649097401740;
        Mon, 04 Apr 2022 11:36:41 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id pi2-20020a17090b1e4200b001c7b15928e0sm168151pjb.23.2022.04.04.11.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 11:36:41 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Cc:     =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/5] ARM: dts: BCM5301X: Retrieve gmac1 MAC address from NVRAM on Asus RT-AC88U
Date:   Mon,  4 Apr 2022 11:36:39 -0700
Message-Id: <20220404183639.2317021-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401102002.15765-4-arinc.unal@arinc9.com>
References: <20220401102002.15765-1-arinc.unal@arinc9.com> <20220401102002.15765-4-arinc.unal@arinc9.com>
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

On Fri,  1 Apr 2022 13:20:01 +0300, Arınç ÜNAL <arinc.unal@arinc9.com> wrote:
> The et1macaddr NVRAM variable contains a MAC address for gmac1 on Asus
> RT-AC88U. Add NVMEM cell for it and reference it in the gmac1 node.
> 
> The Broadcom GBit BCMA driver will issue the MAC address for gmac{0,1,2}
> retrieved from et{0,1,2}mac from SPROM without this but let's explicitly
> define it as mac-address on the devicetree.
> Refer to drivers/net/ethernet/broadcom/bgmac-bcma.c:147.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
