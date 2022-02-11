Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D5A74B305B
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 23:25:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354065AbiBKWZG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 17:25:06 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234605AbiBKWZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 17:25:05 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19DD1D4E
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:25:04 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id i30so18604188pfk.8
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Hlel0CrRSfo+Ss7Fkg8X2DsGLJT8iM8dCfSRjVg61zY=;
        b=NAmldIuKyQMc5JxAGsBU2Pv4So2S2ZJTQJhMf39Xts7AtrmQROva72i5L3oCUc3XS1
         juh4qoFewMFH90AsKO5jGnQ3FCM/pelZizrT9j2UHVbd3Z5PeCZc0/SkskLQxgQF5CIe
         7FjWoH6T79OYZ/sCAU+ZCTZTnQbl1bWTD9N0J+GgFFP/LG5vqdVG/aCMnklAsYSViQMv
         NnHUsFIZ6zt4dNRqTRgpB5j+G9LrhLy1gdb2v6KJ/0PoUgNop7LCv0Bq8wLf3m9S0HQk
         Yp29+kHOTpfGlw5YYL+C9mpX4BkoEuIWOaJswNY5lPF1SA9vFOEbDQUt2pzyBawCIZrh
         HEVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Hlel0CrRSfo+Ss7Fkg8X2DsGLJT8iM8dCfSRjVg61zY=;
        b=vm/IxmW/EiOZabzFHMWxM3mskFFmENXNLekwJJ0n7KuFgTcWjcW3c6Eu8ciP2OCM3l
         CAubSbu9i3p/jLFRc5IGJdFIK4Or+/F92LHJcTvPjKVyRvPmdmyFrTJqpLPoT42PQ6iZ
         7OmaAlLlxWT/I90Lmlya7pL/vkvYTedz/OKtcez59ug2MKZYl8cczr4fLI7Qs2BhL0Cv
         gwnYt6lZ+ote+ZEFg+E470/p3JhBv4um11dKpPfFd1mLMiDVJopFtnRKi2sK2HxwMNdO
         fqNjn2B225uNZc5TyJbiodoqOeTeDbWhAzxBRZ7FugR8eiRxaF0Z77QJ/XnQJ/80j9YL
         EzJg==
X-Gm-Message-State: AOAM530CFXKNv3JuUqcyJ0MQiy9k9dhM9ZJ4c/efkWiRQ3/fmPJwAXka
        H0WxNXAdtqzk/3fATVK69z4=
X-Google-Smtp-Source: ABdhPJw2XStzmhFaLQ7RJL3oht/8Ww2emz+1dgPsnvX9milm/H9rVZ8G08TE/J08RJ4tn5ezMfmB4w==
X-Received: by 2002:a65:48cc:: with SMTP id o12mr3127243pgs.220.1644618303580;
        Fri, 11 Feb 2022 14:25:03 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id pi9sm6890885pjb.46.2022.02.11.14.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 14:25:02 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH V2 1/3] dt-bindings: arm: bcm2835: Add Raspberry Pi Zero 2 W
Date:   Fri, 11 Feb 2022 14:25:01 -0800
Message-Id: <20220211222501.1145093-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <1643736467-17764-2-git-send-email-stefan.wahren@i2se.com>
References: <1643736467-17764-1-git-send-email-stefan.wahren@i2se.com> <1643736467-17764-2-git-send-email-stefan.wahren@i2se.com>
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

On Tue,  1 Feb 2022 18:27:45 +0100, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> Add the Raspberry Pi Zero 2 W to DT schema.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
