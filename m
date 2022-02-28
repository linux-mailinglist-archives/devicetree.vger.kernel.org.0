Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B444F4C7BF5
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 22:28:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229666AbiB1V3S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 16:29:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbiB1V3R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 16:29:17 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AE2312D90E
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 13:28:36 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id n15so9580304plf.4
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 13:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ffsTHk0pMsdeLuBqbLV8zjkDH+jWRBszD35JzvsxObA=;
        b=fVkhQN049gSUM3r2ANalllVvHPTi03qIYIVzd/cbFL8+4xg7yG6VEhatX3OpghAOg7
         LKVQFArS/TIBWYhHQ+VPOno+ocFUPyPGjgxKm1ZcSAWFpUvprJ8ANyB/ZrH9AMxFdoSr
         THTlTEdCRM8FQIWugHiwRhLgEiSOkxBLzy6DrBESm5FxRply9gvNFFrYAsmwgkAX+jl2
         N+aFuU/f58QPv7AAxdGVbH1bLkNUNVu3qOhyHPrbHNjDPjvG0oxXVQ9JeqSFamdKvhWF
         nGlrUE9Wn8T2FtnsNup2gO2oYJ/mZzXuRzt91OsqBzybz/hop8uj125hbVEuVJXVfG5w
         3mwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ffsTHk0pMsdeLuBqbLV8zjkDH+jWRBszD35JzvsxObA=;
        b=B5jmJRz2d5TlKV/L8GxewzPEZnY9wazji9Jvt9iykrLQxU8lOcUHxqN42qQ8VqJdx5
         PkJrAoE301PTI/4egrNmsHO3C/RNdrCF6YqWmhSNFIE7hvnzlZPgilNF6OX5IszPTt1i
         0XZlcx2nSo6ep6LQgrSpcGdDssz593Za06n/fOqdQiTC0ylX7QvKoOlQHe0qRVBbGekg
         sMDfIeh5uWp8SygFaBVbDltpi/t6Mo25C7hOaWPIVBDyYmUae+ujxCncbRxpZb3w2miE
         CiDdXxfX2+VMaRX5ltnIV9AUNur9eFiOst0xIexE/lom9zuGjlq9vYEFI9ADfUuDH3Oo
         Foew==
X-Gm-Message-State: AOAM530BCHqv95BrakFVRz6fxjWuQVxiTOC4mq6Kg0YCEbIxCC8G5IaC
        fMoKf46OS2t8p3Yb9ghTGx4=
X-Google-Smtp-Source: ABdhPJzyK+1GGd5w01NtCyo8ytKX7QqsrfsgfS3lf9pKr99mfNyn3vxNem03MxGUKMjsTKiIHXBbIA==
X-Received: by 2002:a17:902:bcc2:b0:14f:23c6:c8c5 with SMTP id o2-20020a170902bcc200b0014f23c6c8c5mr21922658pls.131.1646083715892;
        Mon, 28 Feb 2022 13:28:35 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id nh8-20020a17090b364800b001bc422b7b47sm266056pjb.15.2022.02.28.13.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 13:28:35 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add Ethernet MAC address to Luxul XWR-3150
Date:   Mon, 28 Feb 2022 13:28:33 -0800
Message-Id: <20220228212833.1961113-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228095207.31821-1-zajec5@gmail.com>
References: <20220228095207.31821-1-zajec5@gmail.com>
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

On Mon, 28 Feb 2022 10:52:07 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Luxul XWR-3150 stores MAC as NVRAM variable. Add NVMEM cell for it and
> reference it in the Ethernet interface node.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
