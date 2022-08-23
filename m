Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 020D359CF3D
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 05:14:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239879AbiHWDNJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 23:13:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239933AbiHWDMl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 23:12:41 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA5E0BCA7
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 20:12:40 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id w196so14461421oiw.10
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 20:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:from:to:cc;
        bh=U3z9C3IgiAZZfXy8gtS5aijnwi+t/z92RC5cjh/YLxw=;
        b=jBWEG5lIWXwKg1LGdrVeb6+BqIGPseXfeSdG/FkMFGu/lvWdS1F6m5XupK2ECLLwsQ
         etB9m5QeEJSUBdnzhgUUezFJLQnbCGS+qXrwXoo55MOWFzK0/Yt0EgzzDCTnO2So0rxJ
         czCyjZQ0LS7iLdZaPfU8bXI8ADHOdQ1n704N8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc;
        bh=U3z9C3IgiAZZfXy8gtS5aijnwi+t/z92RC5cjh/YLxw=;
        b=QWLqB/4j/TRWldaw03nw+UBBZgtwD6ezJExT95W7+FhBOP2NiV7aaKOMmXunCQsv0H
         fWs/n3ArXtsDHyu3dCF2xvt8YjTffOtlenS/CQZtwQbc6oDe2za21u9dwAQ1Qq+n6N5Q
         gzKfMTDlw5FOLz5siS1SLa3tcboK4IVVqDc/ZZoIl4Igb/qGZOlfBF0HIf7AtDq/jqn/
         Ly+3mZEy6bRSP3734M/4xwkEGt/RUYvQhvrDPTlEfQ5/jE7cT4hWNNkaX2CZ7BLoApm9
         jTBLag86+HA3BCR2i3f1kd0BOM6Q1EIn8AQG4nMY6/oZO8tna3MXWywodc+lgo5rUd24
         IZdw==
X-Gm-Message-State: ACgBeo1h9eWBCKX9+2XOEDDZzUBbxF/dK+xKtDMbUsqgDGFpwewZdSq8
        eqZYLpmnJKl04jkBOycyhH/FhkCBAO93zBG87Ahx0w==
X-Google-Smtp-Source: AA6agR6oQkSyLGyO0VfTSJMwd3Xy0ZRd1rtNZbtTjSc5Zj0IZJT8oUtU9Lxm0M4B1be8JT+fTyHkYynC6XSPySeUqgI=
X-Received: by 2002:a05:6808:bca:b0:344:ef42:930f with SMTP id
 o10-20020a0568080bca00b00344ef42930fmr525222oik.0.1661224360105; Mon, 22 Aug
 2022 20:12:40 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Aug 2022 22:12:39 -0500
MIME-Version: 1.0
In-Reply-To: <1661156523-22611-6-git-send-email-quic_srivasam@quicinc.com>
References: <1661156523-22611-1-git-send-email-quic_srivasam@quicinc.com> <1661156523-22611-6-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 22 Aug 2022 22:12:39 -0500
Message-ID: <CAE-0n51rDmmp8RxCkaj=SJ1-sgm+OpzW=eNjWquYvQ9hm11Rig@mail.gmail.com>
Subject: Re: [RESEND v5 5/7] remoteproc: qcom: Add efuse evb selection control
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bgoswami@quicinc.com,
        bjorn.andersson@linaro.org, broonie@kernel.org,
        devicetree@vger.kernel.org, judyhsiao@chromium.org,
        lgirdwood@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        perex@perex.cz, quic_plai@quicinc.com, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org, tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-08-22 01:22:01)
> Add efuse evb selection control and enable it for starting ADSP.

Why is it important? What is evb?

>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> ---
>  drivers/remoteproc/qcom_q6v5_adsp.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/drivers/remoteproc/qcom_q6v5_adsp.c b/drivers/remoteproc/qcom_q6v5_adsp.c
> index 701a615..b0a63a0 100644
> --- a/drivers/remoteproc/qcom_q6v5_adsp.c
> +++ b/drivers/remoteproc/qcom_q6v5_adsp.c
> @@ -522,6 +527,11 @@ static int adsp_init_mmio(struct qcom_adsp *adsp,
>                 return PTR_ERR(adsp->qdsp6ss_base);
>         }
>
> +       adsp->lpass_efuse =  devm_platform_ioremap_resource_byname(pdev, "lpass_efuse");

Please do this in two phases:

	efuse_region = platform_get_resource(pdev, IORESOURCE_MEM, 1);
	if (!efuse_region) {
		adsp->lpass_efuse = NULL;
		dev_dbg(...);
	} else {
		adsp->lpass_efuse = devm_ioremap_resource(&pdev->dev, efuse_region);
		if (IS_ERR(adsp->lpass_efuse))
			return ERR_PTR(adsp->lpass_efuse);
	}


so that any ioremap errors are handled properly. Also using a string
comparison is not very useful when we can just as easily use the proper
index.
