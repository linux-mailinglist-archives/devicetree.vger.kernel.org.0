Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9839640B4A
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 17:54:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234090AbiLBQyO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 11:54:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234078AbiLBQyN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 11:54:13 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97F64D159C
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 08:54:12 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id n21so12883683ejb.9
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 08:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RRUu5j880fvIQ+LRTCFRQYqUzHmhqFqL/6To9Liu9v4=;
        b=J59ApYCfPIcN1afxnGVr2a0LLzMX+5isDs9IxUa9JntKqp3bS3e7pljAyyFAzel8u5
         Hs1eUEbJE5SjuKpzakUFT5vClEgkfHToJUxbyyHhQaG4WEPnf0afFIItRtw0o0cXk+25
         s/U8HaTcWtX5ZGVi7qklK3Evnr/TBtNE0V7fk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RRUu5j880fvIQ+LRTCFRQYqUzHmhqFqL/6To9Liu9v4=;
        b=jTNH0UT2v8WRHvoXY3yZXZzKmwRyREDn487Od5GNrYSqtUjXnZu+v9N0ZBgJnTmed2
         8nvWNk8n5ZL7N5KrAcnKfhM5uAG8mE3pQLoi1bz287o+MTKTUYACaWNz3QEBLMp1uEon
         l4WInPaODw/wWsJU8tFH2tWQiYWk2qBLcTiGYOANWzvEa+5qcbKgeekatk8koAextujg
         wOWBhbbX6gHUxZF+qCZ0fKAVPUnWpSDZPuxyGL0LHp6voL1ri78awzzNlnaR8OA1Lsv8
         NM0RZmTPAMgs6gfSneiNDfiysx1ISP5R7Qxz7jqGb19HxqyWK0xAqE64HNJNJ4q+dXiZ
         DclQ==
X-Gm-Message-State: ANoB5plBH5UxX2EiaJ5/WBUGdIV8aXKSApFD+/Uns1CNTVnBACq+EvFE
        JXLARhvVTzD9weLwFPfL68FAUy5oJFTvtylRHio=
X-Google-Smtp-Source: AA0mqf6dioCuYFRJLJ3GqFUtXPiDmw8ZWicGkZ2z+MG9F5jEI4qmBRkgR6b9rI0/5f6VPLbQooVuWA==
X-Received: by 2002:a17:906:c18c:b0:7b2:8a6e:c569 with SMTP id g12-20020a170906c18c00b007b28a6ec569mr61806596ejz.582.1670000050991;
        Fri, 02 Dec 2022 08:54:10 -0800 (PST)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id c6-20020a170906170600b007828150a2f1sm3243373eje.36.2022.12.02.08.54.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Dec 2022 08:54:09 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id f18so8686867wrj.5
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 08:54:09 -0800 (PST)
X-Received: by 2002:a5d:4950:0:b0:242:1f80:6cd9 with SMTP id
 r16-20020a5d4950000000b002421f806cd9mr12571444wrs.405.1670000049236; Fri, 02
 Dec 2022 08:54:09 -0800 (PST)
MIME-Version: 1.0
References: <20221202155738.383301-1-krzysztof.kozlowski@linaro.org> <20221202155738.383301-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221202155738.383301-2-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 2 Dec 2022 08:53:56 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UPLssDromnt89RYbSEU9qq_t+CSyd5VhmD7b-9JkcMFA@mail.gmail.com>
Message-ID: <CAD=FV=UPLssDromnt89RYbSEU9qq_t+CSyd5VhmD7b-9JkcMFA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sdm845: align TLMM pin
 configuration with DT schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
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

On Fri, Dec 2, 2022 at 7:57 AM Krzysztof Kozlowski
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
> Changes since v2:
> 1. Bring back UART6 4-pin bias/drive strength to DTSI.

Just to be clear, it doesn't actually belong in the DTSI, but it was
there before your patch and it's fine if your patch series doesn't fix
the whole world. I'm OK with this one staying in the DTSI for now just
to keep things simpler.

One change missing in v3 that I would have expected based on our
discussion in the previous version would be to "Add UART3 4-pin mux
settings for use in db845c." I think you said you would do this, but I
don't see it done.

-Doug
