Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2714E654632
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 19:54:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235107AbiLVSya (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 13:54:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231454AbiLVSyN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 13:54:13 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EA63275DA
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 10:53:30 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id tz12so6977188ejc.9
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 10:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZcsqGPg6FZAoLHqSnlhY2ZqAO977IJDvTdbEOzXS1SA=;
        b=AamEj6mQ2MbxRL2eTQGNKqmtoyHbk3rHDzkRcFN6JuRLM98nQ/XJwAS2oV1KzfiTG3
         KASKWAosayh8tChJjITyM7qtpCbQmvCZoGsUz6zA82x+iqbXvIjaRSr/hoBQRO7TVY2g
         ahPYr09u+OlpS6QVItdO9QwhJ3xF09lfs9xGI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZcsqGPg6FZAoLHqSnlhY2ZqAO977IJDvTdbEOzXS1SA=;
        b=zSzfqry75fXysRLzwAA3MNTcJMngqioyZVQn4agH2V/GrY+XUE9mhv+AwIWDRBMcgK
         2hU1j+PTS+j6vmyoD+JVhw0emNKLiiLqNs7PZmZ4OObCdAbIvRAY++Wp/w72V6/2ccgu
         UOKBEtmdipVyCfe34/WsTVDpTz31R64y//ifMpzFsIwovsdk06hBGVusyR1D16X6Hw5t
         VURztr0cZISxkK+5XGLtp8ZnjSSnCZkcVdxHnrrLOIqLe1f9ofFBF6MgtGx9ktYFsp/L
         1JEaHXNcHdA0IHWUCsZwGhiwVjUW1vxpxDze4Yz9/Qc7SgFOWpEJL9CsDDS1hsfPH96T
         uXjw==
X-Gm-Message-State: AFqh2krawuQIZiFVRvRlnkLTxdXWh92ZeTR/FPRTgHvEGlnnE19c4GAT
        Sy5k8HAVXy+bcqKnryiIHt0hCU8UsSn1og5p8m8=
X-Google-Smtp-Source: AMrXdXtv2wzT5ImpuPn7M93MXlHCzgwXss6BEQnYroXqB3pgANeingEvqOOMeS8C6p5eg9+zQRfcpA==
X-Received: by 2002:a17:906:f6c1:b0:7cd:ffd:51f2 with SMTP id jo1-20020a170906f6c100b007cd0ffd51f2mr6275241ejb.57.1671735209108;
        Thu, 22 Dec 2022 10:53:29 -0800 (PST)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id q9-20020a170906770900b0078ddb518a90sm503504ejm.223.2022.12.22.10.53.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 10:53:27 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id bg10so2109232wmb.1
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 10:53:27 -0800 (PST)
X-Received: by 2002:a05:600c:4aa8:b0:3d0:69f4:d3d0 with SMTP id
 b40-20020a05600c4aa800b003d069f4d3d0mr298494wmp.93.1671735207659; Thu, 22 Dec
 2022 10:53:27 -0800 (PST)
MIME-Version: 1.0
References: <20221222151319.122398-1-krzysztof.kozlowski@linaro.org> <20221222151319.122398-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221222151319.122398-3-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 22 Dec 2022 10:53:15 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WWPe9bBP2z6Q3GOaGr-5U9conGq4d8obwVCxQtZ7rAUw@mail.gmail.com>
Message-ID: <CAD=FV=WWPe9bBP2z6Q3GOaGr-5U9conGq4d8obwVCxQtZ7rAUw@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: sdm845: align TLMM pin
 configuration with DT schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Joel Selvaraj <joelselvaraj.oss@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Caleb Connolly <caleb@connolly.tech>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Dec 22, 2022 at 7:13 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> DT schema expects TLMM pin configuration nodes to be named with
> '-state' suffix and their optional children with '-pins' suffix.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Cc: Doug Anderson <dianders@chromium.org>
>
> Tested on Qualcomm RB3. Please kndly test a bit more on other devices.
> This should not have an functional impact.
>
> Changes since v3:
> 1. db845c: drop qup_uart3_default override and use qup_uart3_4pin
>    (Doug).
>
> Changes since v2:
> 1. Bring back UART6 4-pin bias/drive strength to DTSI.
>
> Changes since v1:
> 1. Address comments and implement conclusion with Doug.  Drop
>    default-pins/pinmux/mux/config nodes but instead add subnodes for
>    specific pins for UARTs.  This should match approach used for SC7180.
>
> v1: https://lore.kernel.org/linux-kernel/1b9dcca8-1abd-99a3-da12-a8763bf77f12@linaro.org/
> ---
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi    | 397 ++++------
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts    |  93 +--
>  .../arm64/boot/dts/qcom/sdm845-lg-common.dtsi |  60 +-
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts |   2 +-
>  arch/arm64/boot/dts/qcom/sdm845-mtp.dts       |  77 +-
>  .../boot/dts/qcom/sdm845-oneplus-common.dtsi  | 101 +--
>  .../boot/dts/qcom/sdm845-shift-axolotl.dts    | 150 ++--
>  .../dts/qcom/sdm845-sony-xperia-tama.dtsi     |   6 +-
>  .../qcom/sdm845-xiaomi-beryllium-common.dtsi  |  12 +-
>  .../boot/dts/qcom/sdm845-xiaomi-polaris.dts   |  21 +-
>  arch/arm64/boot/dts/qcom/sdm845.dtsi          | 689 ++++++++----------
>  .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts |  53 +-
>  .../boot/dts/qcom/sdm850-samsung-w737.dts     | 121 +--
>  13 files changed, 701 insertions(+), 1081 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
