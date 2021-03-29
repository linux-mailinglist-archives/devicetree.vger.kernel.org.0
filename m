Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E09034D78B
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 20:45:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbhC2Sol (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 14:44:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230359AbhC2Sof (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 14:44:35 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE416C061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 11:44:35 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id h3so10423067pfr.12
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 11:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pp/6fju9Ymq7r62zCnlWW2TaEcE3yAEM/7Hdzs2PlEU=;
        b=C+uhdRaKXmFP9fq3FLd6v8NSRTxMk8ymqadvYjTFW7+M5GCfdW/VMMQFXv+x7siHc7
         qo4sc79Ia+n2se1SEUwWQWO7e3W+LDnge4IpPc4H+vD0SyIpBUjXPkrZ0XU2/YZqmhw8
         wj4dSqVuGHAhr1Tl001+Mxt2kB2Y/XVnE2U/oGTUg+iJwgAjkFiCrkUnunDr4epM8eE9
         Td70UN6B6F62jp4vXHhHAxfnZ9tD/V3gOtvgqg/VUhhaRY9pzLF9/XA08WO12D66UjYI
         d3kvCYOZGG/zUJLGryOy40crcJO1tI2PC0OSssUwW/isfp+Uy9m3Vxsi1jm/VImvLI/e
         Q7gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pp/6fju9Ymq7r62zCnlWW2TaEcE3yAEM/7Hdzs2PlEU=;
        b=nzrpUzeDyA5vcWPucYgyXH0btSkM3yjeD7N/EH/l1G6Mc6GrerP6CCuS5J9C+aWcMT
         5LL27OHsNKzpjlb1/6Oy5OT0fwLYEfL8vGo2rZFgiBZyJy+GBqn5T68KOu6b0R9Fau5j
         Nuxv/X6ojWn3DsctY4dWA1kxUYvsxUxGeM/dk2bTqTT8DSo8KsJkTAgrMO0y1wzkQQ1c
         Ulm00pvRXBSG9KTd44kWBsVrDhCvUxS5uBlUggw0MBl6nu7P2pCemyLtgD0Jo0iCXZTA
         uo8uZDKeZ30k4LXkibJRZT/57U+IlhguoSXpD5YjOUKK4nFhZJDsvEgII9Q2s00BYy14
         pUug==
X-Gm-Message-State: AOAM533pZQF7i6XulFxGtGGBq6psmJyMuWPbSOfLJdc0ZRRUJ/fx7tD3
        zTquD8d5H89mW4Zt/bSXW6Y=
X-Google-Smtp-Source: ABdhPJw+I4FAR78ZzlrwgykHTuqBxaPC9Ahm7IGTUxv3vjGDU25C863ewfVj8m0/iexhvsQCUkLXKQ==
X-Received: by 2002:a65:428b:: with SMTP id j11mr25281527pgp.47.1617043475442;
        Mon, 29 Mar 2021 11:44:35 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id cv3sm245948pjb.9.2021.03.29.11.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 11:44:34 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH stblinux] arm64: dts: broadcom: bcm4908: add Ethernet MAC addr
Date:   Mon, 29 Mar 2021 11:44:33 -0700
Message-Id: <20210329184433.1357583-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210329154514.29510-1-zajec5@gmail.com>
References: <20210329154514.29510-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 29 Mar 2021 17:45:14 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> On most BCM4908 devices MAC address can be read from the bootloader
> binary section containing device settings. Use NVMEM to describe that.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
