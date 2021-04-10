Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EADA535AA49
	for <lists+devicetree@lfdr.de>; Sat, 10 Apr 2021 04:13:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234187AbhDJCOL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Apr 2021 22:14:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234183AbhDJCOL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Apr 2021 22:14:11 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BECFC061764
        for <devicetree@vger.kernel.org>; Fri,  9 Apr 2021 19:13:56 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso4081325pjb.3
        for <devicetree@vger.kernel.org>; Fri, 09 Apr 2021 19:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=nLePSplx7PtSkXHGdXyCusnm0ImMRD9rerpY+TAlPHg=;
        b=cXw10tBrh9lVLSS0FkJG7oTiJtaMODJjfgdmqz4mTEi+hVS0Wr48giTPDmIyZzQf6r
         2mKJvQ/xUxJMdPj5PNzMlmNkpDJfTaCxaYMqHxs+kb7y8ZfL8Tp+0zVUq3v7OVyaDqFs
         tdDAHKHxr427clCOZZi7nY1dc1dsdxkYQcGoo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=nLePSplx7PtSkXHGdXyCusnm0ImMRD9rerpY+TAlPHg=;
        b=AzqM5+QgwPCVClmXOP6ajY7BJLfpFvHoWPCr8KeAbh2fJGAt2c8dQ/7ZdAmKU4vEKh
         iNegH58qi3lK+HWgJld/FtLkId+vOObjDXv5Mv+YQychEs6xzVnGSGWl+VLSozp4gH1G
         K77x7Gkoabag8Yx/CesPpRx+KjIjWjofgngK5+Clr6N5KIkkNxlTTxE7A6PC6RPxVAWW
         qD3dmXmo14lJMGfaOJukm5sUdvPG+xR4t6NdKkRHC7PE+kmYGenTileT1evGaMIvREO1
         RX3hikTS0N0pUs3+KMVR3nV/IPX4D6KUfHsMyKXYyTg+ZJbGBlAHYrwv5qK11Bx8KaKJ
         6DsQ==
X-Gm-Message-State: AOAM533VZXWYrpotmQ+aW5B/PU/VY+y9pghV/AQxXHMERlJOK1ncRvkP
        SxNjWGqrlDB1u4HT+iNcaf1RUQ==
X-Google-Smtp-Source: ABdhPJyDcS64ZZFzixjsjMMnAtyV704sq0UdPuwlwsXio8lAwsnAuX2nMSAYMbgnNY74A6RJcHXizw==
X-Received: by 2002:a17:90a:55ca:: with SMTP id o10mr16069191pjm.173.1618020835728;
        Fri, 09 Apr 2021 19:13:55 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:5141:7881:7013:743b])
        by smtp.gmail.com with ESMTPSA id q15sm3795524pje.28.2021.04.09.19.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 19:13:55 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1618020280-5470-2-git-send-email-tdas@codeaurora.org>
References: <1618020280-5470-1-git-send-email-tdas@codeaurora.org> <1618020280-5470-2-git-send-email-tdas@codeaurora.org>
Subject: Re: [PATCH v1 1/2] arm64: dts: qcom: sc7280: Add cpufreq hw node
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <tdas@codeaurora.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>
Date:   Fri, 09 Apr 2021 19:13:53 -0700
Message-ID: <161802083374.3764895.12006553235097369856@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Taniya Das (2021-04-09 19:04:39)
> @@ -1116,6 +1124,17 @@
>                                 #clock-cells =3D <1>;
>                         };
>                 };
> +
> +               cpufreq_hw: cpufreq@18591000 {
> +                       compatible =3D "qcom,cpufreq-epss";
> +                       reg =3D <0 0x18591000 0 0x1000>,
> +                             <0 0x18592000 0 0x1000>,
> +                             <0 0x18593000 0 0x1000>;
> +                       reg-names =3D "freq-domain0", "freq-domain1", "fr=
eq-domain2";

The reg-names provides practically no value. Can you drop it?

> +                       clocks =3D <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_GPLL=
0>;
> +                       clock-names =3D "xo", "alternate";
> +                       #freq-domain-cells =3D <1>;
> +               };
>         };
>
