Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3E68614FB74
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2020 05:41:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726900AbgBBElu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Feb 2020 23:41:50 -0500
Received: from mail-pf1-f173.google.com ([209.85.210.173]:37415 "EHLO
        mail-pf1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726805AbgBBElt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Feb 2020 23:41:49 -0500
Received: by mail-pf1-f173.google.com with SMTP id p14so5681160pfn.4
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2020 20:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:from:subject:to:cc:user-agent:date;
        bh=jX0fufKYZvyZ8epx+GgARD/j3hIwfF8CK7/JT+nLQUg=;
        b=F+wcw4jJSFXFdzlfMyI59VpB8DLk10MQ4kH6+dKKDRP0qzO0vGHwxvsD/1ag0wWA3s
         XQi4UvScdhWg04rKZEp3M/puGRnXV2e4K15vJdtGwNF6WCQspP6iVdw45fgkdZ8aP4QJ
         OxPcEXVMkPU1BjSCBDmOO6gvymb2SrhzQilJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:from:subject:to:cc
         :user-agent:date;
        bh=jX0fufKYZvyZ8epx+GgARD/j3hIwfF8CK7/JT+nLQUg=;
        b=f7Fc2hpIMxgMoE9+t91d4ClUFbzub/t3u+bupr+c6NgRyV4C33+ySVzx9rp7fKpgfS
         S0AI4BQcSZTz9PxoI7+zToHdwV0HOm1VnBilWqUWfBj6giAmBPa7sP4tw21yR/y9HUPB
         JBwIzP9iJT0fBKnS7lFzaZbefH27P5cvXE4vDKgb8cWUFhfkGmXfN9qGTl3fOs7G3sT6
         VbKGdTJvDvdNqXacBlywJS+aEOb2mlOqb/ZTMbvZ7vyDTeO2Tkg2VyYOG1RPamcinZul
         wzP8Vzza0a3F96rojw8HyBTsEynzc+RkE96T3V81062AmcdM6MUAVdR5hZaldKk57La9
         GMYA==
X-Gm-Message-State: APjAAAWf15SXxIWbcWHQDT58TDafWYYbntG/n2qCDoxQfxR/Cbb/kVef
        KphKzqcdpVjrRGRD0NjWJj+tnw==
X-Google-Smtp-Source: APXvYqztpJZGE14XPIWxWqPTuQSH8BXdLKg6SY8K4m68pmf4NKVNkv30SL8rm4M4AMOz/D4RUnCJWQ==
X-Received: by 2002:a63:f312:: with SMTP id l18mr10829165pgh.178.1580618507301;
        Sat, 01 Feb 2020 20:41:47 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id b18sm4977615pfd.63.2020.02.01.20.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2020 20:41:46 -0800 (PST)
Message-ID: <5e36530a.1c69fb81.680db.f620@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ff71077aa09c489b2b072c6f5605dccb96f60051.1580570160.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org> <ff71077aa09c489b2b072c6f5605dccb96f60051.1580570160.git.saiprakash.ranjan@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCHv2 2/2] dt-bindings: watchdog: Add compatible for QCS404, SC7180, SDM845, SM8150
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        devicetree@vger.kernel.org
Cc:     Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
User-Agent: alot/0.8.1
Date:   Sat, 01 Feb 2020 20:41:45 -0800
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sai Prakash Ranjan (2020-02-01 07:29:49)
> Add missing compatible for watchdog timer on QCS404,
> SC7180, SDM845 and SM8150 SoCs.
>=20
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

