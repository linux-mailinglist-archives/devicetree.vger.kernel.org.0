Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1D39394C30
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2019 19:58:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728066AbfHSR6X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 13:58:23 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:40568 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727945AbfHSR6W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 13:58:22 -0400
Received: by mail-pf1-f194.google.com with SMTP id w16so1598119pfn.7
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2019 10:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:subject:from:cc:to:user-agent:date;
        bh=HoVmSkEe13oQswbHPUJHfU6oOJm3g2HoCRDfFS6v2nE=;
        b=WRSqAnMYQuRmKa8OeeXjBJh7hCRuFuvWgw3KW8lNHU+42UKEiLm3GJsfYWFUWUKytk
         YajmqMxJ6pqgduqWCTAMQtoStuBtKaMGVWmRpWGO6r7aZAk5ohA6+8OzL1TmME5HbInZ
         Jne+raVcvh/vvA+rp+fFzaTSjISdN3IqM9Dsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
         :user-agent:date;
        bh=HoVmSkEe13oQswbHPUJHfU6oOJm3g2HoCRDfFS6v2nE=;
        b=YTgKKwccnYxu2kbbwgWZnubd/huFbE6NUgK/Pqi7Artzo+6f0aDAV2ZIhBqTAuSPvm
         qY22L0vI9GELPI0Dcrj822W3sIc+biO/kDo1f98sDDhPeayD+gux+zrvJhUSgfdkiUMl
         BTHrQAzshIycv4ll2FdPGDg/kyg2gdK8iz+UnTgVcl4XxMSCNTAc2/w8JFilRtqjzzAY
         Z7iCA+Cnd+D3nVd9LaTXpY3wRGPe2NWvRWfWGplcX26weUhnZzE1EwlXyiKcE79iFmX1
         eK/O3OgdlGXYOWXfBetJ+B+xoqByVm3USBGTyMbiykpXucF5egFxz2qlyt8t8SlmHM44
         OW/A==
X-Gm-Message-State: APjAAAWXmzxXHyv4eI86/eudvmcBvTSijDxd4eFDBD2hX/UJFXItkCS9
        VA4aMGXBzqOwQuVJIeoV+VPLwQ==
X-Google-Smtp-Source: APXvYqwjJi4PF0tOiJFK9Fzga9qOPXzicdB09KvGaSWb7z0d1TsMp2llrCLtwaNJ06hA69FTJDdx7A==
X-Received: by 2002:a63:5a0a:: with SMTP id o10mr21379964pgb.282.1566237501974;
        Mon, 19 Aug 2019 10:58:21 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id h70sm14930028pgc.36.2019.08.19.10.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 10:58:21 -0700 (PDT)
Message-ID: <5d5ae33d.1c69fb81.49902.678d@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190819101238.17335-1-niklas.cassel@linaro.org>
References: <20190725104144.22924-10-niklas.cassel@linaro.org> <20190819101238.17335-1-niklas.cassel@linaro.org>
Subject: Re: [PATCH v3 09/14] dt-bindings: opp: Add qcom-opp bindings with properties needed for CPR
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, jorge.ramirez-ortiz@linaro.org,
        bjorn.andersson@linaro.org, ulf.hansson@linaro.org,
        Niklas Cassel <niklas.cassel@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
To:     Andy Gross <agross@kernel.org>,
        Niklas Cassel <niklas.cassel@linaro.org>,
        Nishanth Menon <nm@ti.com>, Viresh Kumar <vireshk@kernel.org>
User-Agent: alot/0.8.1
Date:   Mon, 19 Aug 2019 10:58:20 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Niklas Cassel (2019-08-19 03:12:38)
> Add qcom-opp bindings with properties needed for Core Power Reduction
> (CPR).
>=20
> CPR is included in a great variety of Qualcomm SoCs, e.g. msm8916 and
> msm8996. CPR was first introduced in msm8974.
>=20
> Co-developed-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

