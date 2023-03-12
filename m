Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF8666B6511
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 11:49:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229956AbjCLKtU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 06:49:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbjCLKtT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 06:49:19 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E88D457C4
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 03:49:18 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id bi9so12211332lfb.2
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 03:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678618156;
        h=subject:in-reply-to:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GXEKhZDtuayyLnwYmi1ZaNEFCsCEA/0Tnk/LxoHckJU=;
        b=dPLqn7lQBS+bRz9+H3oNOrlV29MimCjI1n5vx7B1SA3gY9qUvh+glwOfu4uIlrkGcX
         CljFTz41kNdEy2d+vCXeCwNTgwtt8yATXlwvuG/U1lKAd1xwPivM+5VruVED/0nbAIdW
         Mp9NJ2lX8s2bOdIgcwXHQLyqCaqDwqo9WiEJlZUs7+hfC0oL42sJ19eArHb8KoWb6EK8
         eO8oT1cz8QEujOPMT7c/et4NpbRM+OsrhezLJeuiIxNEYA4/UPuaSkF+QPPbT6u07Jrd
         skoRSG8VIymcXRguEnvwfMCTeTu6ZiCICNwct94tRqp7kdFgzfX5SzBdlIXWXNeB/IF7
         CIkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678618156;
        h=subject:in-reply-to:cc:to:from:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GXEKhZDtuayyLnwYmi1ZaNEFCsCEA/0Tnk/LxoHckJU=;
        b=N25JOKAfP8aRT9vwMwujWrj4uDeQ7H6JKKpYkUERLmimfPAZU1MbRNyHDiYr3Cg6O8
         s5mPD9b/e1+jFV7f1at/a+Y1mEfczgfrYrvs4pQHPG2fMYlDKV4S6yH0lrlV7wb8ThKF
         5IE5BzEI5xLTKdciaXt8+w66l3ghrHqOuqntY+wnbSClflvZikrUNSCV4hFBsYp3aJCL
         zb//QccN11J48pPKn7lZW/UhpahsiN/tt2xv58f/3NWkS6zw0Jt4+7XOhcfuUtSb8dwH
         hv5/3EQx6GcYPnPlniijscPWXVxHqK4yLjeCorPpCFg13FNMXxDlMIUwe/c8xSZz3qaB
         fPow==
X-Gm-Message-State: AO0yUKVmOCPWOc+koxEBvgTiGQ3mKaZl42z01aC/WS6WNLGU3yF8oDn7
        nT8gHj8V32rI51gQ/YIYt5W5sMmD2pRWxnZn
X-Google-Smtp-Source: AK7set/nS5CqHp+i7DeQzJ82ObSyVXSvmeWiYsDWIp9EPpUZeJeTS7K4rJHGJlGXreR+NCWrni2UnQ==
X-Received: by 2002:ac2:5ec8:0:b0:4e1:5d87:330c with SMTP id d8-20020ac25ec8000000b004e15d87330cmr8134004lfq.50.1678618156656;
        Sun, 12 Mar 2023 03:49:16 -0700 (PDT)
Received: from letter3.txt (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id n11-20020ac2490b000000b004dda7435451sm607894lfi.202.2023.03.12.03.49.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 03:49:16 -0700 (PDT)
Message-ID: <640dae2c.c20a0220.ca34a.15bf@mx.google.com>
Date:   Sun, 12 Mar 2023 03:49:16 -0700 (PDT)
From:   Sergey Lisov <sleirsgoevy@gmail.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <2edea81f-9ea1-5ede-8539-6aac88621670@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: synopsys-dw-mshc-common: add
 "fifo-access-32bit" property
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> 
> Missing changelog (I did not get cover letter, so no changelog there
> either).
> 

Got it, will fix in the next revision.

> 
> Anyway, I said last time this looks compatible-specific, so I don't
> think we need another property.
> 
> Best regards,
> Krzysztof

I agree, but I'm afraid of introducing regressions by enabling this
workaround on systems that don't actually need it.

