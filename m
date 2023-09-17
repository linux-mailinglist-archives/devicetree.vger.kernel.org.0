Return-Path: <devicetree+bounces-853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 680E57A35A8
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 15:20:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07B251C208CA
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 13:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 738754428;
	Sun, 17 Sep 2023 13:20:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CE0290B
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 13:20:38 +0000 (UTC)
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9749C12F
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 06:20:37 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 5b1f17b1804b1-404539209ffso36576515e9.0
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 06:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=aceart.de; s=google; t=1694956836; x=1695561636; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:organization
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KeYIqn2tdFkcVAufe9gBvH8l2EIbPxMaLKSc9nvnSeI=;
        b=fGP/lbeOLDw9ka7WpYIOuuqmh2b0qkPdH4OKothbxnK3awDnxiGkVXPoqDUU4I9Bbh
         gHibX/usDnz6WHH2BHTYY6hKXtmwJaoLJJwJO+eP1isLelK6Cv0rlx8qXE1PIHe3RdpE
         XcENRMZei5ZaA5Fvoxugqi3n5axgIOIQQUdZgJjIe55D6YnWB74vgmU96fCdQHdgoCok
         9yl9FQBmzI4Cb/Ma8gdsOlXtdfw/w5wBdHZckbjoPkE7y3vlsdmHnAzaOXU/WePYx+Ti
         PZ4/2YQYNzvM6VH5IR8i9KlD7lXZJoBbqf30HE2nsZFJv5cbe0038aHxi4mRLphfmfVl
         CTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694956836; x=1695561636;
        h=mime-version:user-agent:content-transfer-encoding:organization
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KeYIqn2tdFkcVAufe9gBvH8l2EIbPxMaLKSc9nvnSeI=;
        b=B8+pkKRZ+KRTwp9ZcRl4l/S0X/ARkLGTUrJVfPNmmuJtgXe8ke7lg43qh9M3gcmjnH
         bUxsOrXRsl7/B3vcjSzY+qVbnQu9d7a3ulP7GHz8JYOlNiVlKCujeaqF285SXfqPQrMg
         HyLq/rtyMLBUni4WqEVkB/IZIH+hjxeq9b6eoJ8Vu6oT8qSwbidRc9coYILdOfmmFQAY
         k7lZDHM0FC9TPW9odOka8nmqmMqA0ERpa8C4glgXRX6cPcnTB8z6kBlH3D8CB87MOCCo
         N6T9k52smq3FNVdI5XYbZs3EJFFeS76X3415mki2Q8kcBHYV8KJkLH4IVHCD5jVFPCPH
         0ZZA==
X-Gm-Message-State: AOJu0YzK3u24T/YAeGcxzENcyzp7ZLoQUesICnwFpzpYCA9dSJhcNtwl
	K5Gnr/hOqO5ra+UYFmpMBVWchQ==
X-Google-Smtp-Source: AGHT+IH4ywV4aEv+TpxbpFW30ZsBFhptGh4bDnt8s/U1O/3wFXPg4T07xR32tTPSdkwu/HFEYDVc2A==
X-Received: by 2002:a05:600c:2901:b0:401:906b:7e9d with SMTP id i1-20020a05600c290100b00401906b7e9dmr6226687wmd.18.1694956835911;
        Sun, 17 Sep 2023 06:20:35 -0700 (PDT)
Received: from ?IPv6:2a02:8070:d84:9160:acd3:26fc:724e:a2dd? ([2a02:8070:d84:9160:acd3:26fc:724e:a2dd])
        by smtp.gmail.com with ESMTPSA id r9-20020a05600c320900b00404732ad815sm8936077wmp.42.2023.09.17.06.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 06:20:35 -0700 (PDT)
Message-ID: <dd0f65048f7030184caad4d99b8277d589c6d352.camel@aceart.de>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8939-huawei-kiwi: Add initial
 device tree
From: lukas walter <lukas.walter@aceart.de>
To: bryan.odonoghue@linaro.org
Cc: agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, konrad.dybcio@linaro.org, 
 krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, lukas.walter@aceart.de, 
 phone-devel@vger.kernel.org, raymondhackley@protonmail.com,
 robh+dt@kernel.org,  ~postmarketos/upstreaming@lists.sr.ht
Date: Sun, 17 Sep 2023 15:20:34 +0200
In-Reply-To: <3a66a198-5817-4c74-9047-c49e5bcc84c2@linaro.org>
Organization: aceArt GmbH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


>Are you sure this is 3620, have you tried wcn3660 and/or wcn3680 ?

I am sure. Downstream source [1] and downstream dmesg (wcnss: IRIS Reg:
51120004 which should equal [2]) indicate 3620 (3620A does not exist)

[1]:
https://github.com/CyanogenMod/android_kernel_huawei_kiwi/blob/cm-14.1/arch=
/arm/boot/dts/qcom/huawei_msm8939_kiw_al20_vb/huawei-bt.dtsi#L5
[2]:
https://github.com/msm8916-mainline/linux-downstream/blob/b20608408caff817e=
c874f325127b07609fbaeb8/drivers/net/wireless/wcnss/wcnss_vreg.c#L51

