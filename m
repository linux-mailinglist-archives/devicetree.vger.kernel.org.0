Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B961E55C639
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:52:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236222AbiF0R1a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 13:27:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239656AbiF0R13 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 13:27:29 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF18913CD6
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:25 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id m14-20020a17090a668e00b001ee6ece8368so3885339pjj.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=J4OHjr0l9EEzm6pBH8dCpVKOFftFtGVDw5i7s87wzP8=;
        b=lShRbEmQ54wjSDEAV5hATZInZYmB5wuXevl/UaUPI2CuU2jIpS+LL9lmt1BHkh5sEG
         cxu8QNEwS3fgaA1Cjgq0AGlvRwKtFB9+aY+XkGJyxyUcq92QPlo/vxN8Jza3MRhB8CnE
         fiAhQbb6iJddIcAECTDvmir5qB9PUy5OHEFjnRE9zUk7f0pk7E0k/LLJf3HuiU89R4OA
         MraBesrc/kVzrQvETaUDLer3m29dkGKWpjeumsUBOFrkULu9x8rZNvcjt73veKSCyK/r
         oHEsgihHy7tU+69FcOZEVcmTVO+PshAzgOmuL9RiyPWMwbdhOJzjWJ2xWTdTbI25Cgv2
         A9jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J4OHjr0l9EEzm6pBH8dCpVKOFftFtGVDw5i7s87wzP8=;
        b=NrYQha1STJyXQJ6W6y4QtY7z/wsv3ZZSQ2Estq4ZWEiruAk2lUPgNhRP0X4EKUylbm
         BTUYxXfqi5pzWvbRDtbeiExXt13ndMXWaHZi6RRzA92crZfKPq00ROiftPh3w9Th3rnb
         NVwDSZCr6nB37zVUQihpYhpGFpcCJrdY1wg7cMrxaOogTBSIXI6iL7uDgqoMOqtzG+kU
         R04N25d981G0D2YKSNbH/Hq7UbVi5i1EbwIN132xk2RPQyL3pEpbs/ttPTwbzUxcxiG5
         N/qCmGaiThqSv3XdANEQIdQ7bcXLWKa5Ms3xrir4yKn8ug88e+OC3EJFVokc3KYX0Jmb
         5cBQ==
X-Gm-Message-State: AJIora9uVOwbpjN48jEQ6FpBZIMH+tQFnkuNGKjVxgACFwN07anVb+yE
        IWJi3I+1F3wdaew5r01KFCXAVttsrR4=
X-Google-Smtp-Source: AGRyM1v5OkNcA1XmZf0DSCONDoHM47YkAB85hYzMi0Y7cy69FLPEglLAYE+OYM6cWBMqqhCjMU7FQA==
X-Received: by 2002:a17:902:c94b:b0:16a:3f98:84fd with SMTP id i11-20020a170902c94b00b0016a3f9884fdmr562772pla.70.1656350845121;
        Mon, 27 Jun 2022 10:27:25 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id e11-20020a170902784b00b00168b113f222sm7535207pln.173.2022.06.27.10.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 10:27:24 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH V4 04/11] ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
Date:   Mon, 27 Jun 2022 10:27:23 -0700
Message-Id: <20220627172723.2172939-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-5-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com> <20220625113619.15944-5-stefan.wahren@i2se.com>
MIME-Version: 1.0
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

On Sat, 25 Jun 2022 13:36:12 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> bcm2835-pm's bindings now support explicitly setting 'reg-names,' so use
> them.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
