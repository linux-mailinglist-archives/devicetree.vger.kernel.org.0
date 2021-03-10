Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6E3A333F7C
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 14:43:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232727AbhCJNmx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 08:42:53 -0500
Received: from relay01.th.seeweb.it ([5.144.164.162]:44783 "EHLO
        relay01.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232830AbhCJNmw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 08:42:52 -0500
Received: from [192.168.1.101] (abac94.neoplus.adsl.tpnet.pl [83.6.166.94])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by m-r1.th.seeweb.it (Postfix) with ESMTPSA id 79DF820143;
        Wed, 10 Mar 2021 14:42:47 +0100 (CET)
Subject: Re: [PATCH 06/18] dt-bindings: arm: qcom: Document alcatel,idol347
 board
To:     Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210308060826.3074234-1-vkoul@kernel.org>
 <20210308060826.3074234-7-vkoul@kernel.org>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
Message-ID: <e51c3d36-cc8a-5fe8-3cd9-9583b2a52879@somainline.org>
Date:   Wed, 10 Mar 2021 14:42:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210308060826.3074234-7-vkoul@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> @@ -125,6 +125,8 @@ properties:
>            - const: qcom,msm8974
>  
>        - items:
> +          - enum:
> +              - alcatel,idol347
>            - const: qcom,msm8916-mtp/1
>            - const: qcom,msm8916-mtp
>            - const: qcom,msm8916
>

qcom,msm8916-mtp/1 and -mtp are separate boards and therefore should probably also go into the enum.


Konrad

