Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 88BEBF3679
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2019 19:00:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731200AbfKGR7t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Nov 2019 12:59:49 -0500
Received: from mail-pf1-f196.google.com ([209.85.210.196]:46217 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731168AbfKGR7s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Nov 2019 12:59:48 -0500
Received: by mail-pf1-f196.google.com with SMTP id 193so3014057pfc.13
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2019 09:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:subject:from:to:cc:user-agent:date;
        bh=O6gBNRGhVZ1gdZRloCa4pu6sdIjr6Vbikqu0zr43xGE=;
        b=OxGhg6ZoRHVSnJPS/KQ8rA72slPD0/uCvstdZnD41uuJR/XZ+uroAy0C2HsRi8TJEH
         Ehivz8UEUDJWp/mtRdbhh2Ru2z40X6CTZgFSymicjTvrKVz3nyARqURphSni6IEb4ejJ
         Gx1FErmbqtJ3pBj1kUb7zhFeX6MKw9dKBkMRs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:subject:from:to:cc
         :user-agent:date;
        bh=O6gBNRGhVZ1gdZRloCa4pu6sdIjr6Vbikqu0zr43xGE=;
        b=hT8+m1Z+z7iCVfMq/Y8AdMYeW3ycILKrsZb21EWu9Xfx6RIon/HweF/oRH0n82Rq94
         rjdf5xRLjV7Y8niRl2C+QBQ2ry17Gl4kZ8UfK2vBJSnpqn2TzEg47Zyzw7N3qr+kLOyl
         dtDqTQlSRSr9d4WFGf+B0/Kb+1QKnb2lRg7AWbXBdkNY0v4pEhk1NXDYeBezzcoZiqu8
         W2lBJubc2se6ABUUxZG9MrAKduc1sKEV28q5eH9wSBZBngfoW5Dft/DfPgtMF6vbuqpe
         +AomrQ7d5iYWGSBP1NQswBIr8dECaw8uA+iAn5i5pwgk7W5YCJlHMLurWxaM+jo/qFHz
         hOzw==
X-Gm-Message-State: APjAAAVdY5xixUR2uAHqV64Bsm3OSQrc/v1wnTdhxqRie+V0d/zgzkAp
        pRKywlIsx4NYWtIsvaWHRw64Aw==
X-Google-Smtp-Source: APXvYqyVCRadOx088g6lxPYOjNqiHOYdn+JqmwRs1jOGVb7nudBtoJQRBm1zQAzNz1+MhSrGJSPaug==
X-Received: by 2002:a63:2f47:: with SMTP id v68mr6162731pgv.239.1573149587179;
        Thu, 07 Nov 2019 09:59:47 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id i187sm3674211pfc.177.2019.11.07.09.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2019 09:59:46 -0800 (PST)
Message-ID: <5dc45b92.1c69fb81.99916.8f34@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191106065017.22144-12-rnayak@codeaurora.org>
References: <20191106065017.22144-1-rnayak@codeaurora.org> <20191106065017.22144-12-rnayak@codeaurora.org>
Subject: Re: [PATCH v4 11/14] arm64: dts: qcom: pm6150: Add PM6150/PM6150L PMIC peripherals
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mka@chromium.org,
        Kiran Gunda <kgunda@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
User-Agent: alot/0.8.1
Date:   Thu, 07 Nov 2019 09:59:45 -0800
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2019-11-05 22:50:14)
> From: Kiran Gunda <kgunda@codeaurora.org>
>=20
> Add PM6150/PM6150L peripherals such as PON, GPIOs, ADC and other
> PMIC infra modules.
>=20
> Signed-off-by: Kiran Gunda <kgunda@codeaurora.org>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

