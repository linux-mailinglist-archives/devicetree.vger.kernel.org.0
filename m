Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CF00589FB3
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 19:08:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237095AbiHDRII (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 13:08:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235288AbiHDRIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 13:08:07 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 324E35FAC8
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 10:08:06 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id c139so80842pfc.2
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 10:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=xcHD0rmCevHtOXoxMV/kPS+CYB/uJh1PVeFT9PFxhEQ=;
        b=I0rs2vQnXM/6+tMl051HmEPfv/hMCAtded5s8SZFMZkKXgfn9gKAyPs2A1FrvXVC3X
         znNPMh5PBIL4zU0Pr88K0hsgC1xJnMsJtvnVW8fL9+DvY3kngVFbnsnCHUtZtYGfCrAW
         oMIVFyBqQ+BtlBUSvgj7en6Ytcc+qH3abY9tE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xcHD0rmCevHtOXoxMV/kPS+CYB/uJh1PVeFT9PFxhEQ=;
        b=5OxnDlJBxknIb+pAx22BCzGeoXTzLmtMQSIVsaXevH/sMx+1PP03cTNNOGnuSWqsXs
         7xj9B+eWlGpXhi/64a8Lo3hfKaR/f/HAH3cgTS6Qvrmg5ol5rBtxO88+2TN9uaBcRStd
         WFyd7mqHWfoILimYxlN6xwOVoTht2N/E33IyHU80nl4V4Y42gSAQaJqk9aNg5lOEkU0d
         PKWVjUfIXKZhLo03ycMLGHrZ5lPOYa55ENj4lmFFEn+0zmPf1FU0oEiyqSzmBmhSA0fQ
         shUxnOHzIQLkgzX2tuJoyIhh3W55ZKh4wmZTA4E6BbtvIE4Lkb5heRniYbu5scg9MUox
         RXfA==
X-Gm-Message-State: ACgBeo2CptGpYma+BZk1TB5zhk66F/giJNFIP8j4oa4iC7/k/KREl86x
        OR4vUmohsPw8Kb04HGmb9QnlHQ==
X-Google-Smtp-Source: AA6agR6fRbxYkMQznPNUtay7X2wFyuKgdxVo76mv0Vz/1wO7fvq4Mfxc6Tslh/uNJMAy75DXFnarpg==
X-Received: by 2002:a62:5441:0:b0:52b:ab93:1f05 with SMTP id i62-20020a625441000000b0052bab931f05mr2659803pfb.30.1659632885576;
        Thu, 04 Aug 2022 10:08:05 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:87c4:32ca:84b6:e942])
        by smtp.gmail.com with UTF8SMTPSA id t6-20020a170902b20600b0016d7b2352desm1143873plr.244.2022.08.04.10.08.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 10:08:05 -0700 (PDT)
Date:   Thu, 4 Aug 2022 10:08:03 -0700
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
Subject: Re: [PATCH v2 9/9] usb: dwc3: qcom: clean up suspend callbacks
Message-ID: <Yuv8890X5ePuRR36@google.com>
References: <20220804151001.23612-1-johan+linaro@kernel.org>
 <20220804151001.23612-10-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220804151001.23612-10-johan+linaro@kernel.org>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 04, 2022 at 05:10:01PM +0200, Johan Hovold wrote:
> Clean up the suspend callbacks by separating the error and success paths
> to improve readability.
> 
> Also drop a related redundant initialisation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
