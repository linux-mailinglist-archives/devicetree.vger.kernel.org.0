Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F6002D6ED2
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 04:43:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405295AbgLKDmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 22:42:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405289AbgLKDmM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 22:42:12 -0500
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 651BFC0613D3
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:41:32 -0800 (PST)
Received: by mail-pg1-x541.google.com with SMTP id w5so5465612pgj.3
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K2SeJoQSKQ8JaE2gLaz5pmcE9AjGm2enOTgU+sexwHU=;
        b=cnZWYh1VYSMjtlBYoNXgo9cUY7YW3CiusVomZxf8HuWphF6v+b7HRXVQreiQLcDnui
         Fg4uTfVkhvbPYvq72W1xB5RyDWapc0VAWmRhJSl8q3eDn8y8RxQk++ek5gsi7Ld3plM9
         +RXpz+aANB/yLJr+v6wH595YYc9IfbxwQJe+ndRQHrScKFsJ4fdOa/USwUGSBBe9354v
         RVWaOCisdp8HaWFm2Btufh+g+B0976Zeiu19Mk+KBY9F2Licjhf1VMROJ69pfPMVLSbv
         xqf6pzbO0nVmKkbq4u0KbA0Y2hA/CPSDo0A/b/N6A2lqcGk7FpnLI6Og2eiUex9a6Y4y
         GHsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K2SeJoQSKQ8JaE2gLaz5pmcE9AjGm2enOTgU+sexwHU=;
        b=FJZjFw7kozh2FhdzY+3ck+/l4HaugnCLqqnXKFEn0vxhxGWep4Ru1o0YfKWStGIiwF
         Av6ZBKwOBSrCdHY5FAhtI6ScwzEFRVz3LgBeacZ06vF24d5f3C7gJrHQNEJWEQQ48woC
         gPhfVg9pTfluMEz2VMD6OVAzqQn3g4u88A5fif1NgCXayI11oXm2fRTxpW5EdznyvhzM
         ABGk92696o0WnX+nrI6DpZleDVkE6irkJ9A0XQeFSrcyVRNiQZlWnmp/tkip9SzsN1yh
         6C9cVfv7wuhTqBRuCJmN3iSS00BXcIgVRQ29eKLspP1MQ+v8mUtcUdOkAXFKkWetwEBw
         1paA==
X-Gm-Message-State: AOAM533u/qQ730rjPdteOP0EUzCurvOnymKHYiLTa4/Pgk5yOlwBzZl7
        GOEnv2TtuR10RlyRmTYg+0M=
X-Google-Smtp-Source: ABdhPJzVZ/mlt+VcUySnIYQR+gj6CrgvYqZruMuTtwONq6ENSd5hDXG7IDxFPidha0KSdYt6dIMeww==
X-Received: by 2002:a63:30c6:: with SMTP id w189mr9553664pgw.120.1607658091916;
        Thu, 10 Dec 2020 19:41:31 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id l8sm5304709pjt.32.2020.12.10.19.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 19:41:31 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: describe PCIe reset controller
Date:   Thu, 10 Dec 2020 19:41:24 -0800
Message-Id: <20201211034124.2389472-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201210072154.20278-1-zajec5@gmail.com>
References: <20201210072154.20278-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Dec 2020 08:21:54 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This reset controller is a single register in the Broadcom's MISC block.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
