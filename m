Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B0DF797D30
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 22:12:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239227AbjIGUMk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 16:12:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236044AbjIGUMj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 16:12:39 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61BB61BD2
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 13:12:32 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-500760b296aso1624882e87.0
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 13:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1694117550; x=1694722350; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0OzdoyxvJqnt0X/MLtK9t9ag9mUPB3FEdS4awuCVyWs=;
        b=NLsPI7z9korrprdzTCziyHnKlHsGdmXE4DeR/YfCGS3l/otKTZuJk35EIdE2DFl0zD
         zz2iVdNnI2XtrBg8aSHakWn9Hhegt0oaDt14Vc0UYQ6tlK1wEHI5wDw3Ow+j+82Gda4z
         u1yhVfo+EkqsTCpW9ZLFAMKIAL6QsEpsiwcuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694117550; x=1694722350;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0OzdoyxvJqnt0X/MLtK9t9ag9mUPB3FEdS4awuCVyWs=;
        b=Eg951PeD0XzVPJJLxizocpU0do3MutwHGDjWucgZKLTY122hp3hWygioNIObfLR/2P
         vAZUrQu3xmdh0aO9NbkJEKYTfUv3jVNNlhvg1sn78jPDrSbj8H4Mg8e5/8t1wsouUd2H
         /MDNR/AHn5eThG4OV3cLy+V6eqhGSfNyrW/+gXvoirwdczw1c1+LMJ1G6CSJPTbD09c5
         CCwL5691tQhViRhRl3ysDB/fikb7teMNfkuXB3pCtthzwOxoRSOLzaFSXEeFZGfP82F5
         R9h8sy8vlkg+A1cLfYuMI6niWLuY3yZc3YOXbiXcPYj/n488ttx1Binn5FIiGubX1osG
         XYmQ==
X-Gm-Message-State: AOJu0YzZLN0VKNHvBIMpG11SyHl1lnVmyKHIT/O+4orCsLZI+Vvf0Rbn
        r6aFAzMk3kCt39ppnGbmF16EM+Iln3dejTKDX4dh/A==
X-Google-Smtp-Source: AGHT+IE58pxdwnk+q61OGo1Vs5mrxztbFXRaTjctkUGKBiGBYSFdNnhcqHgRLdOxP+YZlA+MwbTFxFblkrUmS0Twt3A=
X-Received: by 2002:a05:6512:398f:b0:4fb:7624:85a5 with SMTP id
 j15-20020a056512398f00b004fb762485a5mr198955lfu.0.1694117550551; Thu, 07 Sep
 2023 13:12:30 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 7 Sep 2023 13:12:30 -0700
MIME-Version: 1.0
In-Reply-To: <20230907-sc7180-adsp-rproc-v3-2-6515c3fbe0a3@trvn.ru>
References: <20230907-sc7180-adsp-rproc-v3-0-6515c3fbe0a3@trvn.ru> <20230907-sc7180-adsp-rproc-v3-2-6515c3fbe0a3@trvn.ru>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 7 Sep 2023 13:12:30 -0700
Message-ID: <CAE-0n50tAMunStumFjrUKn+mhRsX8n5oR11-9KKOGQfyFS6nuw@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] remoteproc: qcom: pas: Add sc7180 adsp
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

Quoting 'Nikita Travkin' via cros-qcom-dts-watchers (2023-09-07 03:02:35)
> sc7180 has a dedicated ADSP similar to the one found in sm8250.
> Add it's compatible to the driver reusing the existing config so
> the devices that use the adsp can probe it.
>
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
