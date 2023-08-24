Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CC237879ED
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 23:10:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243157AbjHXVKF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 17:10:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243202AbjHXVJw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 17:09:52 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A01F1BD8
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 14:09:50 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-d746ea563f9so294737276.1
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 14:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692911389; x=1693516189;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZtCHx9zPK6zwMY5vtPWIoAhjTmD5KaknZKp2N1NqgXQ=;
        b=j6uo3nuGKtquPq4iURD0rcp8CgfxySjKSEkM8iYkJUVrC0iyBBDFFJPkbupl858r6n
         Q40w9julvt1TsVhZnrdTOvDQf1pBE+i2RYORPSKhx147r2Wc+xXU51IdWa18CMMSVmic
         QvbGcuyyZLWylaCSBQkbr8AHLIXteARg3SzhNstBuRnnNIrzv4tDJJiyG02lymQjPYxz
         B9O+YDZwZcXOrsH5SXh7QyeFaosU8RQjbhryouOOT1lbQHj2hjqLo27f7X3PbR/DWoOQ
         S4K8HPxFCDRRnj8KjztBqo152Ob/0XODa/wj5hTNEXOlL/5+423orFHr1/qD7KxQZz4U
         9XLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692911389; x=1693516189;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZtCHx9zPK6zwMY5vtPWIoAhjTmD5KaknZKp2N1NqgXQ=;
        b=Ka26V5sYr1DQbDGqRqx8QchKlmEPaLcPwJ3sna3eyBeOdb9AFAs2uw2IQnGR0vxC0/
         B2WHqQB84SiqsTfuUgABHmOBzV+o8nl2qmWndjXjcbkbeBl+YToL+IT/cOmO2M3gC/QH
         iiGijoZMgbNqjPZ2o6/AMf7xJ+YqJYZVY3JQAjflm/RIVfoPAmj5lDQ/xqEtNHdOPW0B
         wApLQNAV7f02pwvAGJTcR6bnpph+w/tGPgb469+Dw6gNHajzOp5wVuTq8K8RVlANgqUI
         LRleCSvU+12NNCabNhvTyCr967CahCqHFTi4OI0DN7AhUyDoFfB7oqeHUlZJN/1KHpxA
         yUfw==
X-Gm-Message-State: AOJu0YxrK2bTH0ceLXRMYgSzuGSfuOvD2pQGPjQgJ1UEGwXbw9UE+DuK
        wQJUlIy4kdxEzTtOE4pgmR3nqVdANh3ySYnJmBzTPA==
X-Google-Smtp-Source: AGHT+IFBNwfXc6Q8dKOfaF3XdMl1uH14PrH7g2ybyyi+xAuTtdq/sQ4I/312AzDtI1jht7dE4Ls5XvUL9uwo3s3T/XM=
X-Received: by 2002:a5b:b4a:0:b0:d06:2494:ef77 with SMTP id
 b10-20020a5b0b4a000000b00d062494ef77mr17451876ybr.16.1692911389466; Thu, 24
 Aug 2023 14:09:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230824173410.550126-1-quic_ajipan@quicinc.com> <20230824173410.550126-3-quic_ajipan@quicinc.com>
In-Reply-To: <20230824173410.550126-3-quic_ajipan@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 25 Aug 2023 00:09:38 +0300
Message-ID: <CAA8EJpr4yUL9QAhiPLdTX3sO7nxK4ispN=cS7WXRcCEkcmUx7A@mail.gmail.com>
Subject: Re: [PATCH 2/4] clk: qcom: rpmh: Add RPMH clocks support for SM4450
To:     Ajit Pandey <quic_ajipan@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 24 Aug 2023 at 20:35, Ajit Pandey <quic_ajipan@quicinc.com> wrote:
>
> Add support for RPMH clocks for SM4450 platform.
>
> Signed-off-by: Ajit Pandey <quic_ajipan@quicinc.com>
> ---
>  drivers/clk/qcom/clk-rpmh.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
