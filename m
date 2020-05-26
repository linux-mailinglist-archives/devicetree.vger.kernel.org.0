Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97F761B54E3
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2020 08:49:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726479AbgDWGtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Apr 2020 02:49:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725854AbgDWGtD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Apr 2020 02:49:03 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C358C03C1AB
        for <devicetree@vger.kernel.org>; Wed, 22 Apr 2020 23:49:03 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k1so5460193wrx.4
        for <devicetree@vger.kernel.org>; Wed, 22 Apr 2020 23:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=EFfxe/epc7L2g82M2YjSCSd5iJjobRL2IJO+04GvmP4=;
        b=i5GjJenzjF+Mtmr+euiOruLYS80OFAPAUNbhBwVawispTe/Y76HORAzc30r6GUOI9N
         xZ0NkHoIQ6xbn6AZoag6AllXV3LJYc2DDQ8bBDvbIJuaAds1aKCBk8jCgB4gVSg/fJ1C
         klCIFCRZPCEqIZWd2keqEMNfOtd7SW0Jrx+/H+CgRYaC3+sCyqbX8yqgmPqTN5DzHyFE
         5oTe1grM4U2EDBLMVYb+e9RXI5tmGh8Jz9Aut+tpiD7+BDpUI+h3XomGQAIZ8GgymGRz
         86RDH0jWg925DFj4o5r1rcJ0MY7g0GD7i/XeBYng2zbKPfEyabbvLhlCtcFG2kovF3cF
         JSdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EFfxe/epc7L2g82M2YjSCSd5iJjobRL2IJO+04GvmP4=;
        b=YiLEZo+oasfO2aM5RkgzWlt8eY+lntNxHgQpuu82hkpuFdVEIp2xnSGupOc2B/EZMr
         68366M/W7QW5ucsYbw7TXvdgcwMcZR/2hEX+fd3/EHJcYHzUEh6nrSaykKXeK0UkISGt
         0f7eAN/BWuDvUse+H01ImcrhxFpa6u+dy/HIblEUZVmrpBb49z37Atn8HiWnKxXAqFkf
         U64IxF6kpdGT1yI4TWe+TI5jkHCjF8bEG7CqvVYVlBNwDW8WQlwDDTo5L1gMR9SkVrnC
         3j+IbNRwdaxXvrG+xH+Ec2OzwyeA6VTBvtan8EN51tNhMTarpiN66mwYNtuPBZ0kVD5e
         9JuQ==
X-Gm-Message-State: AGi0PuY30GASKyy5jtLguN7mfsH8sCLKuSTH2FDoUsUmpdvHGX8yGEs5
        o37wh+LiBYCmOVhbvETqMAd47w==
X-Google-Smtp-Source: APiQypL9V/xynzD2GzjmsaioxVGXnzw2BCQOJ51nOTMuoE/OVvc54AgkNwrHjY9FrCXuWV7XQC6XWA==
X-Received: by 2002:adf:afc6:: with SMTP id y6mr3065014wrd.74.1587624541812;
        Wed, 22 Apr 2020 23:49:01 -0700 (PDT)
Received: from lmecxl0524.lme.st.com (2a01cb058702ff004d8cf526990082b9.ipv6.abo.wanadoo.fr. [2a01:cb05:8702:ff00:4d8c:f526:9900:82b9])
        by smtp.gmail.com with ESMTPSA id k17sm2254910wmi.10.2020.04.22.23.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 23:49:01 -0700 (PDT)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, Etienne Carriere <etienne.carriere@linaro.org>
Subject: [RFC PATCH 0/2] Add examples of secure- prefixed property in documentation
Date:   Thu, 23 Apr 2020 08:48:06 +0200
Message-Id: <20200423064808.10468-1-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This is a proposal for adding a bit of description in the DT bindings
documentation of how secure- property prefix can be used for. The
changes in this patch series describe that for clocks and resets properties.

Documentation file arm/secure.txt already states that secure- prefix can be
used for any property hence the description proposed here are not mandated.
However it may be useful as explicit examples of such usage.

I will be very pleased to get your feedback in this changes.

Regards,

Etienne Carriere (2):
  dt-bindings: arm: Add secure-clocks binding description
  dt-bindings: arm: Add secure-resets binding description

 .../devicetree/bindings/arm/secure.txt        | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

-- 
2.17.1

