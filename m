Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81AC134D78A
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 20:44:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231237AbhC2SoJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 14:44:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231594AbhC2SoB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 14:44:01 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C83D8C061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 11:44:01 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id x126so10403713pfc.13
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 11:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5fepwigpV0A9G5m0eSBdhKt4FXv1byzl+hBOP0VmvcA=;
        b=f8t0UYBBt2ysBriduJUi6NAN5HMtQ7H+bvdy2fcDSC7m/iUZehnPwJZJpZY0d5QAw/
         dYJyJnn0WygPpbdoAl9Tieen5rDJDRyIw8ur3YbXnEqhJ6i0N8kkNFDjVDBrvFoLMCxk
         UVNHmz4oe6OXpxMkDKu4Rqv+g730wkHmYCvPf+QKs4EV3YlsVzJjXpleZJR+JJK0GUTa
         c2dlitcXTx44e7NhiYHLAeH81NdFKo5EeNrgE5FDkz2sd+YArmKSOLMiFTJLJjcVemyt
         jMRUr8UiP7V1sStg5vt6nxw+klWzxMIbuqFp3J0bXvcfixjoKvS0Nhix5Hze9I8zurZF
         30+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5fepwigpV0A9G5m0eSBdhKt4FXv1byzl+hBOP0VmvcA=;
        b=jOsxSYCgghOme0k10+VVB3CyxWbDnWgCgP2R8lTv4RXqP/x9/JJbPUBTbitvW7S8lf
         1mB/KIPbwIJYRUnvkY9jSW9E5mebrcvbjepkW0d8emZJZf/wwfuazY/IG8d+bIvr5RQe
         NXX0PPtJ3DvSxLDWh6ROqBYZgf8e+Xz3zk0WrojAxYPs1FC97jBfM35t0U9fgGZZbNqc
         uzcb7LB9dx+G6Kc0doLT0CfvypT3ya51X170JgvN6aVwr1T38iMcfE7KOKbXE5LEUhMo
         PIYik49as1JbrMWc4ifuFxySpAQ6gvphfeq78XKMtrxIPbh1THkXvg+HIh5yGaSR6uiy
         iBuA==
X-Gm-Message-State: AOAM530JNaVP6VQKbrepfSSroRExEhmxcRTpckBKP3S0m5SClFzLbrBF
        bnxsFQG6xxeayKghCc7B5v4=
X-Google-Smtp-Source: ABdhPJzG0dppXhIO2+kVMiKByhTOD7X1UKQCMjs0loVs3fyqV2Hr44UILw0ECwqEgEWC+kkmHr/saw==
X-Received: by 2002:a62:83c6:0:b029:21b:b0e5:4560 with SMTP id h189-20020a6283c60000b029021bb0e54560mr25471333pfe.69.1617043441324;
        Mon, 29 Mar 2021 11:44:01 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id l4sm17967429pgn.77.2021.03.29.11.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 11:44:00 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Vivek Unune <npcomplete13@gmail.com>,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Set Linksys EA9500 power LED
Date:   Mon, 29 Mar 2021 11:43:59 -0700
Message-Id: <20210329184359.1357405-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210329080409.16766-1-zajec5@gmail.com>
References: <20210329080409.16766-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 29 Mar 2021 10:04:09 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Set Linux default trigger to default on, just like it's normally done
> for power LEDs.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
