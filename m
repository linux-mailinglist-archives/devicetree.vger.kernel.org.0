Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6475F518CE5
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 21:12:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241572AbiECTPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 15:15:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236659AbiECTPr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 15:15:47 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8CA73FBC2
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 12:12:12 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id l19so23204437ljb.7
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 12:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=tJjnhYGcI+mMwArUfLaUSAPbfKh4IgFOE/sc6ziZKg0=;
        b=KHuzPdFZ3hXKOaWI5MNsDoVc4us1o8b72/7eGFY1FLlX/BbNjqcmQGr4YZ49GGr8WX
         mXLKIHs3zoVq7kd0H4pt9AvCiAIEDhvfPmFBNb9MuMEjzQXbeROOVMxvJlfDM1Aty/gu
         u5302tPiX+JVBkVA1zuRj2JhlihOXaOarXfJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=tJjnhYGcI+mMwArUfLaUSAPbfKh4IgFOE/sc6ziZKg0=;
        b=u5XnUy8DH2ociw8G1pVfEzZa3oXzIerHuqQANy+jhxszXwyXhY2jApPktDCEc59Vn/
         PJnz41NJyansMhqIrVK67nXDHQ8qp6t/wArs8ya5xqh+w2WnVDsvgTN55+Z9hNeQhKzo
         QOqmiIqPNOcJHQIBavnBxoaL1kshULHEjQshLSuvaLlpXHUZcnYBSSQRf3SGCPSABTpy
         Ln6zJiVNefMZMFhJTYloz9lxx9gRNo24QCv8xOaiw+orTbxDERXabRhC8NQ36NVlyjbS
         N6yvI9AfVQq9j4T44TXO5emYOCP0Ohq/kK2aTKt+TYvMeSNLRDj8rXe4yJ78QugBat8Q
         6VPA==
X-Gm-Message-State: AOAM533IZ8vtwvTBw9pEX1CUIh1CO+XaXTWnyEgSYP5ltpQ8lr1eMIsC
        gufNkdcUKUVddRTrOPDpYRpqdhMET7wu114IfGlFUklQPGU=
X-Google-Smtp-Source: ABdhPJxCl40O4i9zh2oU06fO0CeXR1pEWgYaqzyn+joymhqK3oh7mddDnE60sau0vFQ8O2BS/HVSpBvH+YgCXOktHCc=
X-Received: by 2002:a2e:800f:0:b0:24f:1449:90b7 with SMTP id
 j15-20020a2e800f000000b0024f144990b7mr10762735ljg.431.1651605130301; Tue, 03
 May 2022 12:12:10 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 3 May 2022 12:12:09 -0700
MIME-Version: 1.0
In-Reply-To: <20220429220144.1476049-9-gwendal@chromium.org>
References: <20220429220144.1476049-1-gwendal@chromium.org> <20220429220144.1476049-9-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 3 May 2022 12:12:09 -0700
Message-ID: <CAE-0n53PATjL-w5cWCO1YkCz8oP6jg-FuergskxBd6fsjCMXxg@mail.gmail.com>
Subject: Re: [PATCH v5 08/10] iio: sx9324: Add Setting for internal analog gain
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-04-29 15:01:42)
> Based on device tree setting, set the internal analog gain.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
