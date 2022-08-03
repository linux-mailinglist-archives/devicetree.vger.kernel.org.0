Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7168C589431
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 23:58:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238301AbiHCV6j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 17:58:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236415AbiHCV6i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 17:58:38 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECB0E5C355
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 14:58:36 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id q19so8312513pfg.8
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 14:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=SCTW2VGVCe70yjzOhwev7SpsmSsxdAFKcNcUxQ5cnTk=;
        b=QvmYegVWwxzQMt9s8BVNHqdrotBTolyCG/Brqb8N2NC5qkIEgQFxdpmLRxPp+hbh4S
         Pmc3cs1KKel2tDx+PfmPx+2gfU+Z29b0/yQYOhIXj4wPGlZYg9cp63doNcV0OlbH0C7D
         JNQn2LB8ONdwnRZWz9ufaT1pfS/qNuZgq9Dzc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=SCTW2VGVCe70yjzOhwev7SpsmSsxdAFKcNcUxQ5cnTk=;
        b=3klmHSWd649qBSEXubycvv3kRGEEyUnMwekAbFYNtLENUmdtVUTUzbb/CqisNqEeL5
         vaUOvefDmdhMpdn3ejcMIB4d9Q3Bg8Ldtt1bQARWgmvntW1Yw3S9wq+yyHJ2tzCE3N1a
         7vsP11rxMQJ+Ecgv8kKQ+xxsyl2HoSbtKYYtDgxlkJvmJgUu/PtNZqyBNIJad/o4cqte
         Oxj/LjrgkYwuowILhRTg0dU3b9QNszxD8dmleOBYO2xrRQddMvGekRy2EG0R59FMhYeR
         AF9baxYGD/lj/Kk4LeMHRzEgUnq2NOfWjt1Gn5fLF0KjiMyDhLO9GY9n45VL1YiEtE6Z
         ziBQ==
X-Gm-Message-State: AJIora/m8iC3apHuObzhHx4JJDgz+cdPg1+Qxg8xYfQGfCN7o61rjaap
        OoMiNYDDzUF7OHWh2fEl79Na4g==
X-Google-Smtp-Source: AGRyM1v7t6ywdISV+g82lYVUwLGYI/OHQiSZ7PwIQ4O0SpDyjUA11aPQKQKyGvDOsWyGYUJnoagBlg==
X-Received: by 2002:a05:6a00:1a44:b0:528:6af7:ff4a with SMTP id h4-20020a056a001a4400b005286af7ff4amr28142758pfv.78.1659563916450;
        Wed, 03 Aug 2022 14:58:36 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:238b:c074:f5f8:56d0])
        by smtp.gmail.com with UTF8SMTPSA id a8-20020a631a48000000b0040c9df2b060sm11384657pgm.30.2022.08.03.14.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 14:58:36 -0700 (PDT)
Date:   Wed, 3 Aug 2022 14:58:33 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krishna Kurapati <quic_kriskura@quicinc.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/8] usb: dwc3: qcom: fix runtime PM wakeup
Message-ID: <YurviWfzut9sursr@google.com>
References: <20220802151404.1797-1-johan+linaro@kernel.org>
 <20220802151404.1797-5-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220802151404.1797-5-johan+linaro@kernel.org>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 02, 2022 at 05:14:00PM +0200, Johan Hovold wrote:
> A device must enable wakeups during runtime suspend regardless of
> whether it is capable and allowed to wake the system up from system
> suspend.
> 
> Fixes: 2664deb09306 ("usb: dwc3: qcom: Honor wakeup enabled/disabled state")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Ah, I wasn't aware that the same wakeup mechanism is used in runtime suspend.

In how far is runtime PM actually supported/used by this driver? The device is
set 'active' in _probe(), and there are no other pm_runtime_* calls, except
in dwc3_qcom_remove() and qcom_dwc3_resume_irq(). How does the device get from
'active' into 'suspended'?
