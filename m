Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10A355B82A6
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 10:11:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbiINILj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 04:11:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230095AbiINILh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 04:11:37 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41F0352833
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 01:11:29 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id q17so3376373lji.11
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 01:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=iZWQ5Y5Hi8CWhQBH1f5b8elpMACX9kHtiFs5cgZXWnU=;
        b=pTTW6wt42ZbuGip9KqG9W/2VYWHhw9uRUsEbJ71hITKbzWz8HMrDBeXeN+lTXP9sEZ
         qQoWJEAnxO1ATDIv/Y3BSxD+OBY8UMg3gmoO2spFVBt+Xy7ntJGhAjla8OZh/nP+h0Xn
         lDTGqERssXYy/TcUzunBFj8dLoefb8mF3afS0HGohD6t4l60XchdN0IIHckT44xo8hOn
         JhL/5FQcq9k/9eTq0BLqXU1IXFn9RCGhNgHcObSmv16LIgvQwijupPFm48RCP5iCQ/dk
         lBIoSywTcHRE7mELJet68lYb8ym8aatv0cT0wTFh+bQ8qNnDyGgumgP5DVBCr3p+rowc
         ZH6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=iZWQ5Y5Hi8CWhQBH1f5b8elpMACX9kHtiFs5cgZXWnU=;
        b=7f22Ycol0iU7tvFwKEQIx3vd3gfn7HMkMc1/i2qV+28d61rCU4NxrAA2Y3B9p908Ed
         4+qNQ07fQjQdMLBA163QogjUM94vLdOM7ZLsNITvm6LIHvwZCgucEsrDwLXL8LzPXxNl
         m3iZLi2ihv/QKtEjg4kuna94jOTMAYp4Y6tbRf/6ZOSdx+0th5r7u6AlTfwlw4j9NASP
         S43R28MabadJM1qxAmiDV54PT3kM+wFYQBVtzp+86atN8n0pxicnVr56na4zLBTeDRFo
         IgKq9VLGO7mDWgDBq1AnZGGvFh9+z2H4+45fsa5ED7Cit2HGgHOP9+FSTtGFqBL7Re1O
         ZidA==
X-Gm-Message-State: ACgBeo0GdyY9IFNjfm5j4qRGgOWjswimGzRVqU9wwpAlE+dpWYQD/ic1
        Zz5KUEGRnB8iqGY6x6ReWPytmw==
X-Google-Smtp-Source: AA6agR7KVYLe94RDe7L+HNI/gTnXhrOM85yrUN8V96og/vOzDi3rBrNsY1d49OC2TJJcwr2NURMcBw==
X-Received: by 2002:a2e:9410:0:b0:26c:170e:e107 with SMTP id i16-20020a2e9410000000b0026c170ee107mr2483758ljh.455.1663143087450;
        Wed, 14 Sep 2022 01:11:27 -0700 (PDT)
Received: from fedora.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id g12-20020ac24d8c000000b0048cc076a03dsm2265290lfe.237.2022.09.14.01.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 01:11:26 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 1/5] dt-bindings: clock: qcom,gcc-msm8660: separate GCC bindings for MSM8660
Date:   Wed, 14 Sep 2022 10:11:24 +0200
Message-Id: <20220914081124.350266-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220909105136.3733919-2-dmitry.baryshkov@linaro.org>
References: <20220909105136.3733919-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dmitry!

Overall this looks very good, I suppose we follow up with
adding PXO and CXO to the device tree(s).

> Create a separate DT bindings for Global Clock Controller on MSM8660
> platform.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

(...)
> +examples:
> +  # Example for GCC for MSM8974:

I think that should be "for MSM8660" now?

With that nitpick:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
