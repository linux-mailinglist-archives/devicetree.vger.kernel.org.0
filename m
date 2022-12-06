Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B3D0644851
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 16:49:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232099AbiLFPsv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 10:48:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233419AbiLFPsm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 10:48:42 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 089F9DFF5
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 07:48:39 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id 82so13771393pgc.0
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 07:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g/DuGuLAXdzRR4IIf8T6bkbJ/i9jtNdfks5rt8QKk20=;
        b=XiwEnRUefPJu1b9K63JN14nPhjE0pQ/Z8VdcF/8MfhMuBbbNsEaQ4TJkTGp4kTd1xK
         13nGcgiX8gtho0vBhQ89vUT5uucEczBM0IrV3QT7dU7juJa1Je+4NBEKq7juxz6M9Dgq
         pdxMGM/wVat/VAYrou5WB5uukS6MG6+SAx9oBhDnlXlsLAK+XJ/VnTHmZOJmd3yr5dTr
         EK2jiSdGsvInKWBKx9r+TuSIEt7Dx/mKrkHgSso6nPJaCpE+9IJxcZDsH3Rn1LcfhO15
         h5uECF3ZQem2Lhb0ltNIyGz6C/9+Q3e2NlhCeSnHcaOcGoYr5HXNkysw8jXmWytGvWue
         YH+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g/DuGuLAXdzRR4IIf8T6bkbJ/i9jtNdfks5rt8QKk20=;
        b=QA/3n19leqk2dQGx8nvhvot87Nhbw5igTeIMmhLkfa9DyDe4PqrdzdhQSkOEJsf9dR
         cnk/Xxy2c1nm0XL8Tq4Gsb1xn5ulQ038snY7ZhG3tMNqEhXPrItZlFzuNgj0i+x+sHlw
         GnLsbb3nAUwrvBQZJLn6wgbK1UeAYZP3b7EZFhScunjHhuXaWKRL9m4x/jNBq63m7+qj
         QNvp/TBYMlA8ZejhwoOGa7o5z0YsnOkgHvPwd4ucE3j9vuoqnu392xywXcjie/sWH1IO
         IerySE6yLE0MARrwXkcY6f1+zYnjW1P7EERE0EcBoZKn6lwq34JrkwTv5/EMLnd2jCxm
         ijJA==
X-Gm-Message-State: ANoB5pn1tPqh4qHiP5bZ3MjP1kkT+/CF9x8AqJktkS4SVpLzRczEh9A3
        iDIg/kCLEu5BXv/Z0BSc2vEtDozRn5ibax9m1Lg=
X-Google-Smtp-Source: AA0mqf40YN9ouSKGdtCwgFfsT7QPunm9ea81n1uKcK2R0aPeuqECOSFgKFTLK8kudgQnxq1BoevPRTkY1w3r+0JKtrk=
X-Received: by 2002:a63:b54:0:b0:434:911a:301 with SMTP id a20-20020a630b54000000b00434911a0301mr63372534pgl.50.1670341718476;
 Tue, 06 Dec 2022 07:48:38 -0800 (PST)
MIME-Version: 1.0
References: <20221206154414.1461492-1-dan.scally@ideasonboard.com> <20221206154414.1461492-4-dan.scally@ideasonboard.com>
In-Reply-To: <20221206154414.1461492-4-dan.scally@ideasonboard.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 6 Dec 2022 12:48:23 -0300
Message-ID: <CAOMZO5CirMhmjb8ZSYi8PExAbt+cYR1y=O+2FyMO2J5fUxSFjQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: Add device tree for the Debix Model A Board
To:     Daniel Scally <dan.scally@ideasonboard.com>
Cc:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, linux-imx@nxp.com,
        laurent.pinchart@ideasonboard.com, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 6, 2022 at 12:44 PM Daniel Scally
<dan.scally@ideasonboard.com> wrote:

> +/* SD Card */
> +&usdhc2 {
> +       assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;

assigned-clock-rates missing here?
