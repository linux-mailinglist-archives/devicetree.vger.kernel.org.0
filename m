Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6DED7877DB
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 20:32:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230372AbjHXSbc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 14:31:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243051AbjHXSbR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 14:31:17 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F48419BF
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 11:31:15 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2bcc187e0b5so1372711fa.1
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 11:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692901873; x=1693506673;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k/dmEEbj7+i/B+fm5A2Uaw5rpUCMdPhpq0R3TswGQcw=;
        b=Wmq1Ok+0rtf3iVO301xBocP9VPkK0jpTqopRVfkW1qjg+QNHR+nfAmHV14NMK/wu1J
         mlDtSCeLDWRA8WhowtjI0uuVTzKYaJn3JUHNwmL3PFr9eHAV0teW2MlvjP+Zk1/qGCA9
         dhN7pNN6WKwIPvbnk6rKg9XWRX3NteCC2RJ3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692901873; x=1693506673;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k/dmEEbj7+i/B+fm5A2Uaw5rpUCMdPhpq0R3TswGQcw=;
        b=CrqN++6Yg2lpsufYSrFPOUw/fSbqqs4b6JwSke7chl5wWUWuAEqb6jx3e8dE8jJ1LZ
         MN5Z/AuQ1X1f/KK3TbuKLe0J3/b2YtTmpB7gNi2TkIPC8Ss5FCHddkaT8FPeBTJORNzl
         O5MUfBt87ipQx9o9K4L2h0VWG7D6npiueNBQ3uwNVDvPOHV0qar40rej7jnO5ZKLSff7
         R1y9GUQEhFHzbqxAWuaAkjS9i6X0hqp/5cr6RTvsLUHA6DYewx+fupCjqVSia/wSUNX2
         hSSvGPeqHw5TUpNulOUHrHZ/aKS8GNfUXlmDc2Qg3UpgNv0cpyO1PJvRmWkKy0pqBz9f
         WRbA==
X-Gm-Message-State: AOJu0YzXKxO8BJ5hB5ZQ9hCDVIBzsHXFg1e100kAFB29mAetZ2Vk6aXQ
        87/eVRKt7qnWUkfzEI0o4DalxW5Liuhi8p0uzpPDdmem
X-Google-Smtp-Source: AGHT+IFhf+NOyhBuIEGugY/oG73rbGgqjPjLf++1XTf8CqPDldzWbnYbsVIa8gtAWaakiMGuanamwQ==
X-Received: by 2002:a2e:95d4:0:b0:2ba:18e5:106f with SMTP id y20-20020a2e95d4000000b002ba18e5106fmr12769657ljh.30.1692901873211;
        Thu, 24 Aug 2023 11:31:13 -0700 (PDT)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com. [209.85.167.50])
        by smtp.gmail.com with ESMTPSA id h16-20020a2e3a10000000b002b9ccbe074bsm3829166lja.73.2023.08.24.11.31.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 11:31:13 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5009687f822so509e87.0
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 11:31:13 -0700 (PDT)
X-Received: by 2002:a05:600c:3ba5:b0:3fe:dd72:13ae with SMTP id
 n37-20020a05600c3ba500b003fedd7213aemr24711wms.0.1692901521167; Thu, 24 Aug
 2023 11:25:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230823222741.89584-1-david@ixit.cz>
In-Reply-To: <20230823222741.89584-1-david@ixit.cz>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 24 Aug 2023 11:25:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VqzpL1n16eBrV7N_i8Zx3-eJRUBY+NgZxjBqaZQCYkdA@mail.gmail.com>
Message-ID: <CAD=FV=VqzpL1n16eBrV7N_i8Zx3-eJRUBY+NgZxjBqaZQCYkdA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845: Fix PSCI power domain names
To:     David Heidelberg <david@ixit.cz>
Cc:     cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Wed, Aug 23, 2023 at 3:28=E2=80=AFPM David Heidelberg <david@ixit.cz> wr=
ote:
>
> The original commit hasn't been updated according to
> refactoring done in sdm845.dtsi.
>
> Fixes: a1ade6cac5a2 ("arm64: dts: qcom: sdm845: Switch PSCI cpu idle stat=
es from PC to OSI")
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
