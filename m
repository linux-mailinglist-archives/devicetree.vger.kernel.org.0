Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22AC4333F77
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 14:42:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232251AbhCJNlt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 08:41:49 -0500
Received: from relay04.th.seeweb.it ([5.144.164.165]:54915 "EHLO
        relay04.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232910AbhCJNld (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 08:41:33 -0500
Received: from [192.168.1.101] (abac94.neoplus.adsl.tpnet.pl [83.6.166.94])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r1.th.seeweb.it (Postfix) with ESMTPSA id 4862B2015F;
        Wed, 10 Mar 2021 14:41:31 +0100 (CET)
Subject: Re: [PATCH 05/18] dt-bindings: arm: qcom: Document sony boards for
 apq8094
To:     Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210308060826.3074234-1-vkoul@kernel.org>
 <20210308060826.3074234-6-vkoul@kernel.org>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
Message-ID: <d1febeca-edbe-3e1a-c912-d18c9e42480d@somainline.org>
Date:   Wed, 10 Mar 2021 14:41:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210308060826.3074234-6-vkoul@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi!


> +      - items:
> +          - enum:
> +              - sony,karin_windy
> +              - sony,karin-row
> +              - sony,satsuki-row
> +              - sony,sumire-row
> +              - sony,suzuran-row
> +              - qcom,msm8994
> +          - const: qcom,apq8094
> +
>        - items:
>            - const: qcom,msm8996-mtp
>  
>
APQ8094 and MSM8994 are separate (though still very similar) SoCs, so they should probably have their own const:'s.

karin_windy is based on APQ and all the rest are based on MSM. Sorry for not having documented these when first adding support for them.


Konrad

