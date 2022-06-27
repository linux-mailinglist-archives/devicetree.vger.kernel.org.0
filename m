Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C532E55E17F
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:34:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234960AbiF0R1O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 13:27:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233236AbiF0R1O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 13:27:14 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E50A12AC6
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:13 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id g16-20020a17090a7d1000b001ea9f820449so13144089pjl.5
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 10:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lX+9x8o1ATQGRrnoWCnooIpNqC+XyTe4uOaunPrYXp0=;
        b=e172Kbn7SNbIgFmPO/9snruChq2Ya87xeixkxHen5ZHKQKP/VblHUeh9E5emRNc8aF
         EkrNDNyTvKYxDDMjcBAhIqMXkk95/nkdwZ7qsxXVEK/iZ4iElY+bwcZIYL1Ugm5HD/BX
         EshiR9cPf++Y8jVlEk7PW6RCPkBZzHqnk8AxfZdOeurwJTRJGU7z8j+fiztWjuYUl9Ne
         5krAT3SA487alcKmHARQgUguqhzoOjd+tBrGR6LwukeDJFt704KYq4Bf5IiM4FLGn6AW
         RG4DAzw9u6TKp0Hgifqy024ZpHl8CVes5DP6qfi0mlADMMGcApKotrCi8yb/UF/LDJis
         enXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lX+9x8o1ATQGRrnoWCnooIpNqC+XyTe4uOaunPrYXp0=;
        b=G/hbY6nT2k6DcUKAATcGG2+QxRFiCWbR9iWjM+Jj+eIm5DTmMdFM9R2dgGuMvsRt9F
         cicay3/OIJcDflsNgaseffaq3pHRcZUII4lwIi+BrfTfU3accJ2bp+4D+6Ti5e16x5iw
         AUkV9H8sSnhiHilQeKCnUhne9913X4LJsey+dPeLj0cXnPiGDA47KBgEVOfhJu0vqffy
         e/NWZ+MPD2Qo9yRpX9h0e4N8G5R9lyHXoFUkOd+MCmdcI/U8mKqDIg85fSJ+hNR/4X4P
         rar4Aa++gt9Z7KbJMelupabS2dFYp50zUM8Wa/Ckh1N2Omop8zwS2hiHxXzCcx04e8Qs
         vF/w==
X-Gm-Message-State: AJIora8WTX3aei5MnsTbQ9wy8Ujb8UrtJs3rytCHMz9ReL5J293t9SuZ
        YbwbKcmdInAPBZbjFy+oDCc=
X-Google-Smtp-Source: AGRyM1tx9snSKMJwEsWrtodvXjOpMjHtIkJKvGhm8BWWtS8bcdX3LffgLr+lZfkRL4x3a9q18UrzsA==
X-Received: by 2002:a17:902:ee55:b0:16a:5b2:a2b0 with SMTP id 21-20020a170902ee5500b0016a05b2a2b0mr513483plo.133.1656350832953;
        Mon, 27 Jun 2022 10:27:12 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id lj4-20020a17090b344400b001ece32cbec9sm9829479pjb.24.2022.06.27.10.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 10:27:12 -0700 (PDT)
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
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH V4 02/11] dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
Date:   Mon, 27 Jun 2022 10:27:10 -0700
Message-Id: <20220627172710.2172720-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-3-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com> <20220625113619.15944-3-stefan.wahren@i2se.com>
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

On Sat, 25 Jun 2022 13:36:10 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> Anticipating the introduction of BCM2711, of which we'll need to support
> its new RPiVid ASB, introduce reg-names into bcm2835-pm's binding. This
> will help to have a consistent mapping between resources and their
> meaning.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
