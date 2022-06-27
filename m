Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 062FC55DAD6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:23:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239575AbiF0R1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 13:27:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236222AbiF0R1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 13:27:19 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C13A12AC6
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:19 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id 23so9709746pgc.8
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YZFByktlDHUegK4Y1EibTvitO2HLqQyl6p8Zr3+NPfE=;
        b=Ti+gd4qdSMo0g5CDhmbylNdjPgpY4zL3sqv/rRg3RSNRQstbxcW6nyq6SGZSHBW64s
         MXNTAnSvkrQ+iAMERJpFp1FptnQ2wTi4+y0SL9tjGSWxFT1qB96355Vi9QMYRlheL9IG
         ASRME6d9oXVBuxKRNdt95t2oAydxZNtvnNSuf0+bMSOhRv4TWDGy/P+XSgfAcnRDfh8I
         ZE/An3PMl3IDsSlhwl8JDbZd/l5jFeotp6M2mVBZ5bSI9LY6JGyVVSlHFA7ngc3UB0tD
         vTrOU5Z0lBt2yt8YpT17dLKXKmoCNY/VJ4HVswD3KANpjPFLFf1cVZ2GcIUi7m9kjgWI
         qWpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YZFByktlDHUegK4Y1EibTvitO2HLqQyl6p8Zr3+NPfE=;
        b=Woxf9OEL3ZRI1fiPz2Gn6me9wD+v2ptcrrRS3BfeI3L6uHhD2DDX04Lhk3jOEC2KKB
         SBH3YU4Q4RprYo7/vH1c0BT/kf1hGWrbRkBZfFpE4vlmNH4nANQbBs7DepBCr0dUWp1P
         xN5EDzB7o+ptXYEHHnK1a/Qaxe7jWPSibHKk0GatDUxOh00Sq/vogtrXUmu8sUqqXNmL
         9qgmY7C7Gcl57ePiIWfKYqa5ruhSdwemuAfXDj8IPh1ABxsMrq1MDbYawasXmzX2HCkh
         rtAc5GSw27p4gIGdCLi6kUSsCWRl+GuYPW/7ULu7zpd6z38BMZBrZQmrtGLNizmuIXEW
         JcPw==
X-Gm-Message-State: AJIora+PcNXl9wZ8uyhbR+j79MIbGrEiJMF1YkJSU8fx9Bs2CxrUmTPm
        8L5otRlGl2OMXUTYOOk9iH8=
X-Google-Smtp-Source: AGRyM1vUHKfaC8PMZ/nu7VSX6xQTQsYbREkC9lAB5lQotKjJgrFEKJOT7RAU7IcLVyUjhBTJIAIv8g==
X-Received: by 2002:a05:6a00:2450:b0:4f7:bf07:c063 with SMTP id d16-20020a056a00245000b004f7bf07c063mr16023064pfj.51.1656350838481;
        Mon, 27 Jun 2022 10:27:18 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id y41-20020a056a001ca900b00518d06efbc8sm7723143pfw.98.2022.06.27.10.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 10:27:18 -0700 (PDT)
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
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V4 03/11] dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
Date:   Mon, 27 Jun 2022 10:27:16 -0700
Message-Id: <20220627172716.2172828-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-4-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com> <20220625113619.15944-4-stefan.wahren@i2se.com>
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

On Sat, 25 Jun 2022 13:36:11 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> Add a new compatible string for BCM2711 and the option to provide a
> third reg property for the board's new RPiVid ASB.
> 
> In BCM2711 the new RPiVid ASB took over V3D, which is our only consumer
> of this driver so far. The old ASB is still be present with ISP and H264
> bits but no V3D.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
