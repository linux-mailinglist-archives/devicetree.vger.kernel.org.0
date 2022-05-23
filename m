Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8D92531722
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 22:52:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231392AbiEWTeP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 15:34:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiEWTd7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 15:33:59 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34934C1EF8
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 12:19:46 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id p4so25830000lfg.4
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 12:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6a0BAY6jmrXBJdXOo2MY++BwfoYw3NjDDRYpdznvaYg=;
        b=nu1x1jGkAR5URkfiIOmvwdTmONPXh76JLQei8+UG0jqC4Yv7dboYonH+KeKuF3KJay
         5V9hnQVY6NG5KaxGNGURDUF0RWn5+nbafZ3LpVJh1W6UI6qfKj6dqs70mJjx0Wtqysis
         Lj1WlFVXIerAxvBxiNl2Wf7mhDJiFb49c80JYykae2CCHlY/EnZPwlI3UXCRyK+9aNCb
         3KKvNWpOWPynNce88lM2wLJ6MAfZ7TkQM7HH6VfJQbQfYJopFPwVMcc3inH6+GOg4zrd
         UgvDXBBoze5FgWDJkegY0KzbyG0LKNUmYY8ZN6yoYj/czAFDioEfeZgyBiNqB/APWqo3
         iV2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6a0BAY6jmrXBJdXOo2MY++BwfoYw3NjDDRYpdznvaYg=;
        b=XtibgnWfNeXZ6ocwIE2XaarCFYe2IL9NrUo/8toi+8huDycwx152Gi3neOL21pPghY
         6AC8XYvpY6nptFDaThNoEaYd4BZt8vcHwMAbl0iQsX54GtnKpKXbmRBYmbVEOZsX2bwC
         Emg/9ji03eLq9H2QNfK2Sy234SD+1+hcqnvGHHTMRvq26HJlaZZ7395Lu7CL0SmbG1zG
         P+inLckHBOYhAG0fTBLnpeM1gluCXBkCBDEuxsEkmfCf1uF6Ea83Ev1vCMF1L2bSNGPd
         xaVPgGMAKhxnjgvyZ4apv0HdIatU/zHmMWcINejL6DklKp5dty1o3zefRgjBGwFCFQyO
         I07w==
X-Gm-Message-State: AOAM532QavI4OP0KhD5iyDJEpOQasBvHtn1JCNMisorIU8xPmXmMkYk1
        9pCNbsds+xThcNI54GCF3Ok=
X-Google-Smtp-Source: ABdhPJyHTcfhCQ/LJ41sPtLWtehnfAg8keKD9wL+9Td1qGSEJjP1u4wNcmbq9S+/RsdqBctR7MCwkQ==
X-Received: by 2002:a05:6512:3d10:b0:478:6508:45b4 with SMTP id d16-20020a0565123d1000b00478650845b4mr7751989lfv.334.1653333583816;
        Mon, 23 May 2022 12:19:43 -0700 (PDT)
Received: from localhost.localdomain (ppp91-122-164-134.pppoe.avangarddsl.ru. [91.122.164.134])
        by smtp.gmail.com with ESMTPSA id g7-20020a056512118700b0047255d21104sm2069531lfr.51.2022.05.23.12.19.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 12:19:43 -0700 (PDT)
From:   Andrei Lalaev <andrey.lalaev@gmail.com>
To:     andre.przywara@arm.com
Cc:     wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
        Andrei Lalaev <andrey.lalaev@gmail.com>
Subject: arm: dts: sunxi: h3/h5: add gpio-ranges for pio and r_pio
Date:   Mon, 23 May 2022 22:19:15 +0300
Message-Id: <20220523191913.285283-1-andrey.lalaev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220522222630.7faab948@slackpad.lan>
References: <20220522222630.7faab948@slackpad.lan>
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

Andre, I checked the gpiolib API and didn't find any function I can
use to register gpio-hogs specified in DTS.
But I found the similar patch to the qcom driver. Could you please check it?
https://patchwork.kernel.org/project/linux-arm-kernel/patch/20180412190138.12372-1-chunkeey@gmail.com/

What do you think about it? Is it a good idea to impelement
the same changes in "sunxi-pinctrl" driver?

Best regards,
Andrei Lalaev
