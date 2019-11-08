Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4CB7EF56FB
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2019 21:05:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731794AbfKHTPA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Nov 2019 14:15:00 -0500
Received: from mail-pf1-f195.google.com ([209.85.210.195]:45411 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391161AbfKHTFx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Nov 2019 14:05:53 -0500
Received: by mail-pf1-f195.google.com with SMTP id z4so5195641pfn.12
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2019 11:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:from:to:cc:subject:user-agent:date;
        bh=CfxKEEZdYJDv+VwQMOnbdgS+o53AJxYEZMeJRl17oUY=;
        b=HRTONkgN2o1mfAw6Hd2hOJcORiFNbzX1IfUNiHyPBaQLBNgyFywtEECrakzInNnsEJ
         w/S14UjT2rKf1jH/m1+HPScmwLK39XdK6/ZwD3cvPs+G7wYQcIBx21toa5Kw4HRD1Ty/
         ZjR2GUIfXAJOPCBRYAS5VQXZ5oZCv514M1ltE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:from:to:cc:subject
         :user-agent:date;
        bh=CfxKEEZdYJDv+VwQMOnbdgS+o53AJxYEZMeJRl17oUY=;
        b=oqm4HljPB3NuoVTzhbUDoYQH85d0sfx3289yvxadwR0olv4jJMuL4bpaJvhkaQwBU/
         K78rd99QsOgVWVUjzV6uQCneXPvOKXea2Kg0qGVCP+LWJkDQi7C3H/NyFYU60b1uKTcg
         G8XX9Vw0gjvHmiseTrynuEbGvB6wTE3f8WVG60HqPhMxQlQJc73For2qVM3iXwrFpmRd
         ok61q/BakrXnPx6OQpbDDVTebdbPB4mCyfRqTdiJmfkoaC9rwO98/AiA91fi+xo3J2vp
         fC4HOahzMLo2E6etxtCHb+r35t0RpsNqCBTSwdJKyU587qUnKlBx2v6q/okrt5FCsE+G
         H7Xg==
X-Gm-Message-State: APjAAAXTqMmyDJM4A1YFSjG2C0pcmavuYN5S3lLUKDMw6bZ2Xp/JeeV+
        3seYfuvBQ4u+MRwh0c3F7XALhA==
X-Google-Smtp-Source: APXvYqx0+sp5wxq5arm4pH8fols7oNVG7M0CO0z5dS7yC/rfQPExsY8YMHVLfzaj1WlNNQ6pKAFebw==
X-Received: by 2002:a63:ec42:: with SMTP id r2mr13646860pgj.162.1573239952931;
        Fri, 08 Nov 2019 11:05:52 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id i102sm6684441pje.17.2019.11.08.11.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2019 11:05:52 -0800 (PST)
Message-ID: <5dc5bc90.1c69fb81.90c1.10cb@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191108092824.9773-3-rnayak@codeaurora.org>
References: <20191108092824.9773-1-rnayak@codeaurora.org> <20191108092824.9773-3-rnayak@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mka@chromium.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Taniya Das <tdas@codeaurora.org>
Subject: Re: [PATCH v5 02/13] arm64: dts: sc7180: Add minimal dts/dtsi files for SC7180 soc
User-Agent: alot/0.8.1
Date:   Fri, 08 Nov 2019 11:05:51 -0800
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2019-11-08 01:28:13)
> Add skeletal sc7180 SoC dtsi and idp board dts files.
>=20
> Co-developed-by: Taniya Das <tdas@codeaurora.org>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

