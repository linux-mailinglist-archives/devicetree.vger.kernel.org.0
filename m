Return-Path: <devicetree+bounces-646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F02E57A26A0
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 20:55:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 089671C20909
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 18:55:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA63018AE7;
	Fri, 15 Sep 2023 18:55:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A008B1774E
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 18:55:20 +0000 (UTC)
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FFC735B7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:54:04 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-59b5484fbe6so27742267b3.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694804043; x=1695408843; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Xc6N8q1gZ95xd8ZpHAufgS4nDSL1wE+rjEdZ65KQsuw=;
        b=Y6QLEJ/Z5tHbuWGfWnpfmbpvFrNOQr+2Ld45uG2P6v/o2sw7rCmTkyt1NUxypT4K3k
         /WZlYCVecODw8hTWkgjCHGaGcxUIbtWyEMVpxME2xRXykQteq284iC5XSYEL8skLtZpg
         CSiUGcoFXo77u9hyZJyotKqWRYg075eKeUi1iDHNhKK69NbfC4I9sagCEUr4Omxi1W/s
         JgQWiwBHu/CUyUF6Rv/+lT0oapb/GgdFnfUIYZm4ns3pez3yjhycdy+hTNprrI131WVs
         vhNhBi30Gk8R0qZ6qpys6WdA0E03NeoxcCAIjUn1fJ45OVTzmelMWCouOeNAgKLibfRo
         LbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694804043; x=1695408843;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xc6N8q1gZ95xd8ZpHAufgS4nDSL1wE+rjEdZ65KQsuw=;
        b=nRkoFxRewcB/HVRVfnYwbFSG+V4WSqdOSZZPYKYJNdSI4XYQ8MS/UXrM6lCeka5i5p
         s4WUpVfHYNl1FHUsffyD3tUNEr83QhjZzxvbFNtM90r5S+MrKxC2VPH7/oybIYVm5Jl9
         2Q+lI64+FbPYQ9ztH2mLX+ZkscBzrUgKlX3g9/iQd9CEI9iCLDbqVgBhSOX24z7seb3a
         yXCIOLIPtP7LkXHWHHiT8Y4qQFlg7KmibQPhYX0ncFzNmAGEVbB6BU2LKyl/p50P44Xc
         K7e/ocqOA8Z9n0jY/HFnNmL+oEyzat/Opr+6NTbJHV6+/SKT0BcF9g7xewiCppfwgTbz
         FRWQ==
X-Gm-Message-State: AOJu0YxLUeXCBNRCMjNC0qp6vVVKynhUGD9Js3i1C9DlgpymHDNuhhsS
	P7vEDp1Ml2Nyi3vvlpnKzpbsDkROqMTdXvm+H8xN21v2Hxf9nsrOrkH7BQ==
X-Google-Smtp-Source: AGHT+IHzJEqXtPBsPW5jLeFQcrS9Dk5aUh3URVKOBbbZYM9R7XAZ4gEp09I5Ct3eiDOjHZCwgOeYUuK9STXkvNcsKSs=
X-Received: by 2002:a54:418a:0:b0:3a7:45e0:c0eb with SMTP id
 10-20020a54418a000000b003a745e0c0ebmr2846439oiy.24.1694803544202; Fri, 15 Sep
 2023 11:45:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230915121504.806672-1-quic_srichara@quicinc.com> <20230915121504.806672-3-quic_srichara@quicinc.com>
In-Reply-To: <20230915121504.806672-3-quic_srichara@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Sep 2023 21:45:33 +0300
Message-ID: <CAA8EJpo6hb=cxJ8wTLf+fEc8B30dhT67XWbqiNrMoRfUxUnqSw@mail.gmail.com>
Subject: Re: [PATCH V2 2/4] thermal/drivers/qcom: Add new feat for soc without rpm
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc: krzysztof.kozlowski@linaro.org, agross@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, srinivas.kandagatla@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	thara.gopinath@gmail.com, rafael@kernel.org, daniel.lezcano@linaro.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 15 Sept 2023 at 15:15, Sricharan Ramabadhran
<quic_srichara@quicinc.com> wrote:
>
> In IPQ5018, Tsens IP doesn't have RPM. Hence the early init to
> enable tsens would not be done. So add a flag for that in feat
> and skip enable checks. Without this, tsens probe fails.
>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

