Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0960B6D5B55
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 10:59:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234063AbjDDI7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 04:59:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233752AbjDDI7P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 04:59:15 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 205EF10EA
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 01:59:13 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id t4so26728131wra.7
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 01:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680598751;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xhmLvYTQcPKtQRpKNvJ99GQcivVXlt+ZGDjfmFboqdY=;
        b=iFuBFInAqwNQveiwRZUKoUptD7VgxIu2xXvn5sA1OBeDBNJFH6cmXnD8fAcjC/iM5+
         vsqGz3Ce9igGibAd0w5FaLhXs+92iaV6NpVjom8jVtydnyU8TEeNVOHf6M/mnmPG6sdI
         XYqlCKhrRwCDd8P4hivhShtLOmsNSAHgsJ8daVq2urAiXXEyFIpLQ7vAlvXbqZAtUyTb
         fXYat8OuoA8JirQAhzqxHKWKa4qaRuaZUIENvcDbGMDPBHR8anDYKW+ljM4B7WUwAbDe
         qJKIjCWAtRoKZ07YGdwRi+W6VjU1ZrPPQx1zqZpsRFCwRkd3GsQsRlZBz+K+cnFiyg1p
         gN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680598751;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhmLvYTQcPKtQRpKNvJ99GQcivVXlt+ZGDjfmFboqdY=;
        b=3nUqrkK4z4NBfgSNYDcJ2iHIIM4Y9tNoBXCI7MhnWirybEIED6qK6E0V0QlYy3PlPb
         vQDw+PlEF22qXa4onChP29jGFvoUxSSHRHNx2BI2qhaYSbdZhLxkEXhBv1NfuwSsXkFZ
         9o5xDPyenMYbeHR6Bbb0c5HtpwuKsAxv4dWSCeMrsjRBAf0tUCgD5lvnnQy+laa5WlM/
         rZM2Lh38fXYWw73YEEbzOOqzP/1qlruOf5tXag66BDzkLhx8mtBNhta4g0eMOw5Qnt0r
         Sjdt7N0GC24n0kqkvD2trZCenJEb15t3FLtnqMNgYD/L6bngUZZOMN62Wz54xPBdWnw4
         erLA==
X-Gm-Message-State: AAQBX9eKIviFzwz3V4xqbfVhoyTtSuojD6v1g4kGzB9dv/o8l4gP6MTa
        FJSj9YgvX7g9Rj6IdbfpZHj46w==
X-Google-Smtp-Source: AKy350bTPANrZCQfItZxB//61A8/dpTItubB+xmFkueFRy36gzr1xtKT50DBcvGfsbByv9g2a/nkgA==
X-Received: by 2002:adf:f786:0:b0:2e5:151e:89f1 with SMTP id q6-20020adff786000000b002e5151e89f1mr1163239wrp.8.1680598751583;
        Tue, 04 Apr 2023 01:59:11 -0700 (PDT)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id u13-20020adfeb4d000000b002daeb108304sm11777978wrn.33.2023.04.04.01.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:59:11 -0700 (PDT)
Date:   Tue, 4 Apr 2023 11:59:09 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        "James E . J . Bottomley" <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Biggers <ebiggers@kernel.org>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH v5 2/6] dt-bindings: ufs: qcom: Add ICE phandle
Message-ID: <ZCvm3fzSh8owVDdc@linaro.org>
References: <20230403200530.2103099-1-abel.vesa@linaro.org>
 <20230403200530.2103099-3-abel.vesa@linaro.org>
 <9fc90c8b-9234-84fa-7dab-fee9de2b9813@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9fc90c8b-9234-84fa-7dab-fee9de2b9813@linaro.org>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-04-04 07:41:55, Krzysztof Kozlowski wrote:
> On 03/04/2023 22:05, Abel Vesa wrote:
> > Starting with SM8550, the ICE will have its own devicetree node
> > so add the qcom,ice property to reference it.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > 
> > The v4 is here:
> > https://lore.kernel.org/all/20230327134734.3256974-4-abel.vesa@linaro.org/
> > 
> > Changes since v4:
> >  * Added check for sm8550 compatible w.r.t. qcom,ice in order to enforce
> >    it while making sure none of the other platforms are allowed to use it
> 
> Why?

SM8550 will be the first platform to use the new DT bindings w.r.t ICE.

> 
> Also, this does not solve my previous question still.

Well, the clocks are not added for the a few platforms (which include
SM8550). Same for 'ice' reg range.. So the only thing left is to
enforce the qcom,ice property availability only for SM8550. I believe
it solves the mutual exclusiveness of the "ice" reg range along with the
clocks versus the qcom,ice property, by enforcing at compatible level.

Is this not enough?

> 
> Best regards,
> Krzysztof
> 
