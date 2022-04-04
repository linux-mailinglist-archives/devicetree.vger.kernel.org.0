Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 552A24F1B31
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:18:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379507AbiDDVTt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:19:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380004AbiDDSiL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 14:38:11 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3041A31376
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 11:36:15 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id 125so730504pgc.11
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 11:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qJsHZoTP2Sj7OsbZwNymXj+dVe3rS9SP0Yyr2r47gYg=;
        b=Q5CvbrPqoFfhjb6eJnN75Xbb5tDJFT5y0knksaPv04uRIVg7ljVSquvAew0+2W08kE
         DtqMiEKAMCWsJm9MGS9NgLv2AZAClnharU319dJj6Pl82sw9K0bXor6oZojTVTnSlGx2
         5+LH5SywpSzmj9KObdIgJXVMN1+EXsRs/JK8rbbIxk8je2Det/b53QwgXO6RhEiR2SaH
         5BMiiq67DvVeyUex0tMFMwmjpvUv9bCHCPafzIyBRsaB0n3uA6fibNLjfiB6cEu4rHSG
         ibkFeTNnnyC7YjvSRiiR8Br3q6611vOMnxBG/GPcpv+KMbP4LRRZyMQ8hkzsF+iRlCgx
         EVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qJsHZoTP2Sj7OsbZwNymXj+dVe3rS9SP0Yyr2r47gYg=;
        b=gRfE4EX1SVT3ubHyKerObdtrMA5WxHCCLlb7N50D8LN9FwL4sEB7YaGmgQUnOI5ktl
         gu/ev6nmWe4C59A6CEMRtntg1GeOiPJtiBS2BJt5t5eFdIHfQQHuBKw/rkwOvQcWnH13
         03LqXHlR95q7wc3HIxvl8oIfND8hN/RVYfe4lsuZmhKNa3jI59zOdU4TAgd2SHCXACPu
         ZPRVWXsEKsCCV2jNpLTqGVyLk5Zw/vDTK8uvLzidBPc/sC3UKPMP5UvPEqnYXjIK7iiL
         XlguHC69M4srTv9+jVYOfylU6CBw8vVq3koE8WmMelwnjZh85hYO2EheIQGZu3qEEeG0
         N/fw==
X-Gm-Message-State: AOAM532Z8Mwshvh/3ZSs6BQTEFQ2GcAZrcCOINVzx5Zv+YcjUL8UESQh
        bHbEHWep8btlyqAsD/vGz9zloHwNR5g=
X-Google-Smtp-Source: ABdhPJz1SsD+TzERp5WoSKTwq5gQLmfK7dogpKDSM7+mmNlWjJxUJGBCRUKvYcTah7jN4JbnRSYHjA==
X-Received: by 2002:a63:6c02:0:b0:398:833b:f739 with SMTP id h2-20020a636c02000000b00398833bf739mr1047198pgc.524.1649097374656;
        Mon, 04 Apr 2022 11:36:14 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id i7-20020a628707000000b004fa6eb33b02sm12801939pfe.49.2022.04.04.11.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 11:36:13 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Cc:     =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/5] ARM: dts: BCM5301X: Add rgmii to port@5 of Broadcom switch on Asus RT-AC88U
Date:   Mon,  4 Apr 2022 11:36:12 -0700
Message-Id: <20220404183612.2316906-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401102002.15765-3-arinc.unal@arinc9.com>
References: <20220401102002.15765-1-arinc.unal@arinc9.com> <20220401102002.15765-3-arinc.unal@arinc9.com>
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

On Fri,  1 Apr 2022 13:20:00 +0300, Arınç ÜNAL <arinc.unal@arinc9.com> wrote:
> Define phy-mode of the Broadcom switch's port@5 as rgmii. This doesn't seem
> to matter but let's explicitly define it since phy-mode as rgmii is defined
> on the other side which is port@6 of the Realtek switch.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
