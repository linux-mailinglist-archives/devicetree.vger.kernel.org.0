Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A8A3797D34
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 22:13:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236251AbjIGUNb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 16:13:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233400AbjIGUNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 16:13:30 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 510781BD3
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 13:13:26 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-500d13a8fafso2297030e87.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 13:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1694117604; x=1694722404; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AofgTSeTaSoX+KT+4pbt9cKca7D17Cr26/O66nz9q7c=;
        b=hDjc51ia5wFv/7FthnO6trGz1BbXY+BxQh+MvP2ag95BiNPEb9pcZMKIZr9XgAFBG8
         WYAGUSJFIcImEI53PmWm/thE4+UPcCGA3mJVm927JPRFetpFoEbZIS9xQx6zoFXHmjv+
         HVUCRrCkzrXgy59XYum1LiJx3dFBdhbkC+nl0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694117604; x=1694722404;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AofgTSeTaSoX+KT+4pbt9cKca7D17Cr26/O66nz9q7c=;
        b=KDpLKHdKlaCcmWCOtUQPGP80llHuzMRfqz9/wwUodPVZmNeTYuFKAWbMvKuLXNrgqq
         gPv5pGY1NQNu1B8RryO1PvMENUzWD1/3irB2+cOi4PD5uTPs8XYZGJrZDY0q6sIvmlLx
         rS1Dp0ERM3G3bkbhzkvwSQZ3njsRNdDPIVSmZ7IyzzCizKn21Qvk+BbFoh1ZKMeACesy
         vE+Lxk54LHo+XHWgDoQhHgqIkuEYAXIRvsF2su+oB2ub+6swEDpMmwG34JudS0yfRVO9
         EIqmIHue7wyaFxtYre9mKwbIX3vV12MuI/QjiQIVuhSNh7NP5/rUX6vN4s5bmBjY2T36
         yJgA==
X-Gm-Message-State: AOJu0YxBwTV5QAec27MzIc3/jzAFdJvBkYtysoxi3P8zmSt43NSNWH2m
        bpjLvaasbePxFF2VMtiYHPU/ui3HiBpjruYC7joroQ==
X-Google-Smtp-Source: AGHT+IE0nBqvLlzYBmzwnOanK7KrWaQfrYJYXlchR9O/niIGQWvx9APP+f5nRQPun2bUpLU5Sbbe6CORNiT8eH9AyJE=
X-Received: by 2002:a05:6512:3f12:b0:500:ae85:726a with SMTP id
 y18-20020a0565123f1200b00500ae85726amr368142lfa.50.1694117604597; Thu, 07 Sep
 2023 13:13:24 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 7 Sep 2023 13:13:24 -0700
MIME-Version: 1.0
In-Reply-To: <20230907-sc7180-adsp-rproc-v3-3-6515c3fbe0a3@trvn.ru>
References: <20230907-sc7180-adsp-rproc-v3-0-6515c3fbe0a3@trvn.ru> <20230907-sc7180-adsp-rproc-v3-3-6515c3fbe0a3@trvn.ru>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 7 Sep 2023 13:13:24 -0700
Message-ID: <CAE-0n51x=PyyJQQV7TXxtEOSFLVC0NxyY9_YE9Tqjiqur9ODhg@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sc7180: Add tertiary mi2s pinctrl
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Nikita Travkin <nikita@trvn.ru>,
        Rob Herring <robh+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     David Wronek <davidwronek@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting 'Nikita Travkin' via cros-qcom-dts-watchers (2023-09-07 03:02:36)
> Some devices use tertiary mi2s to connect external audio codec.
> Add it near the other two i2s pinctrl definitions so the devices don't
> have to duplicate it.
>
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
