Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DAEF4B79FD
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 22:52:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237835AbiBOVw0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 16:52:26 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235504AbiBOVwZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 16:52:25 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C597B5601
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 13:52:15 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id c3so292721pls.5
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 13:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aN5YmtuYWznDowto5aPICkVMXBGokF/WGypb915FxNY=;
        b=X+2c8aAmrnYZJl8J+TTDZAFu5rzDQ7Bjz6CTXBCMdt/w5dMXUkcgu9sTWuVI2JZCCT
         +aIx8G3LH1LF/Sq4M5hXgHCitHg4gyAJm66MOxPw8DJ4+VfiEc+rJrua46rfriF2vrEO
         EGREgqwlUXb449HXlA8K6i0WV1VcnLPlZkjuQlQUlA2YIzaliXVmfxsDFMcZvnzkX2BR
         HO1TMfxbAreicIMtrWrvL+5QFMtjbuDTIROFCIPpzkRKX0XaqrBPdRrQvPgobL4MgFSA
         TjNDjY1w5rd749cv0y6kPY9oxs7bWcs5gIkCTHj2SR2VvF3FVpIkE6BvJEGwZvtFg22q
         UPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aN5YmtuYWznDowto5aPICkVMXBGokF/WGypb915FxNY=;
        b=aEChK+jjbmrbn6UZIselhuAZAalzAGdVpB9Uu7O6TM+6lMLQSzxI4PkhdPAPQEzjN2
         KtNoAdX9aJgp8etDliD9RUpoAP9AAA5YHfM2vgpP72J/49mFSLitwu+UoyqS0wbMbpt+
         H422FMyFqv5zpvKqmdSjMzi+7X0Pmq9X/OCGHuI6Y7gn+2pjjvRyTDdgjz9qQAevYlSj
         pXtCbgQcY025DBKgJgGGy5UAyq1ZyrcDgOlV86YRanmdg+gXe6mjIEOXmmONnIp4LxeI
         lQnCzXt4hXrK9TtPMISaF5e3a19e5qPkk0CaNWxDhkpw1EATM+TYkjTx0nsg4Yse/lUT
         clmw==
X-Gm-Message-State: AOAM5320uHJVLFOZTxQNKGWsJesN57blS/FAvnvphSTWosoP7wvkRHhb
        KeAM1ZL78BRka4JLCMK4+Ig=
X-Google-Smtp-Source: ABdhPJz21EQdQ3/rs5F0T+19jgbNnbJcecOxIO0C1q7cAQ1ypaDb063x1G5BkDVSp5YJ692bpVv44A==
X-Received: by 2002:a17:90b:388a:: with SMTP id mu10mr932644pjb.207.1644961934828;
        Tue, 15 Feb 2022 13:52:14 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d16sm34384601pfj.1.2022.02.15.13.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Feb 2022 13:52:14 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2] arm64: dts: broadcom: bcm4908: add I2C block
Date:   Tue, 15 Feb 2022 13:52:12 -0800
Message-Id: <20220215215212.1636021-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220215063639.15361-1-zajec5@gmail.com>
References: <20220211103306.15271-1-zajec5@gmail.com> <20220215063639.15361-1-zajec5@gmail.com>
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

On Tue, 15 Feb 2022 07:36:39 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 uses the same I2C hw as BCM63xx / BCM67xx / BCM68xx SoCs.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
