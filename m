Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B0C587A48E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 11:36:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731548AbfG3Jgt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 05:36:49 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:55405 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731547AbfG3Jgs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 05:36:48 -0400
Received: by mail-wm1-f68.google.com with SMTP id a15so56467991wmj.5
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 02:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZJGOI0XD4iCQkH+WRaFU0A0LRTuCZQBsr0GY66Pg+e8=;
        b=Zyz5PkdkJ1vJYBwV933CubVzm8dZn46io6BVWv+OMp+rs9pNh3+eCWssANbIgVxZ4o
         MjxMX4Y2+nakncd5IAUCaIGexdTD4SFiJRMymdLonVpqCuZ8fNmQzprGWCb8j65ogUbP
         bqHr4ZyhWAwhycA5dTxU/WWAih7Anhx9QS5m98H/hgvrIUECkXWCWCXGHvyy/bMtC8gS
         bIQQSP0KDuVhqp35qjqbr/ENJ3E9RD5G0HqG7vG+k+F3mhN6K4dNH9fLDN1rx1Ahkoih
         dHe98YKXLS6Pvk40jF5+OhBomELCqv3CNwJOE9zZ3cpRSQBRZUIGU42G26rAlL8P9tw7
         TQpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZJGOI0XD4iCQkH+WRaFU0A0LRTuCZQBsr0GY66Pg+e8=;
        b=DbZsfz/t1spHc36jOYu2fPR3KorMDXFU5VgcWBB7t0WnvfqqZz5UJ/yIQ6MUQK3E5f
         LI/lzCmspAx17QnDVzlAmYookzByN2NpIPPkqmPi0Cvx+zexgqcv3Ovbot4esO0FC3IJ
         z10AzyTYgsKBkqiGfQ3yHylX6Kf5BeSlXgLspyQTCs7p//Ckno45scCkvPZFns8ud1Gp
         LkkI5+qOInPKiewV5GuAThAdIgRyJo+692oXGyODz7/2aaJxksncunWDf4HC6lt6ewwK
         hR+vx8zvMLNurDJ8FSruXWGirLdDWxtH07efQ1/iSk/cecSoXdWTQEniQA7IKN8z88FG
         KBbw==
X-Gm-Message-State: APjAAAXFxMdwXlNbBxUrHTuOuhHsG0ijXEv5amBFCYsZW18vWYCpGrFr
        2Fd4W8sCZYZ/EDLVF8cId89Zkgf6qM4=
X-Google-Smtp-Source: APXvYqyx3czDG5k2WC8u59iWvVurG01BJ0hgirO+SeP0xPqAKU2BV9ttGBAyVLojHP27Yodnw1yAOQ==
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr105046730wmk.79.1564479406948;
        Tue, 30 Jul 2019 02:36:46 -0700 (PDT)
Received: from ?IPv6:2a00:23c4:f78c:d00:1570:f96d:dab8:76ae? ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
        by smtp.gmail.com with ESMTPSA id j16sm6528987wrp.62.2019.07.30.02.36.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 02:36:46 -0700 (PDT)
Subject: Re: [PATCH 5/5] arm64: dts: meson: Link nvmem and secure-monitor
 nodes
To:     Jerome Brunet <jbrunet@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
 <20190729183941.18164-6-ccaione@baylibre.com>
 <1jpnlr27w2.fsf@starbuckisacylon.baylibre.com>
Cc:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
From:   Carlo Caione <ccaione@baylibre.com>
Message-ID: <8a979ed2-ee55-010a-d9f4-51a374456e55@baylibre.com>
Date:   Tue, 30 Jul 2019 10:36:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1jpnlr27w2.fsf@starbuckisacylon.baylibre.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2019 10:23, Jerome Brunet wrote:
> On Mon 29 Jul 2019 at 19:39, Carlo Caione <ccaione@baylibre.com> wrote:
> 
>> The former is going to use the latter to retrieve the efuses data.
> 
> Actually, if you really want to not break bisect, this change must be
> merged before the driver change (patch 4).
> 
> I'm a bit surpised to see only the axg and g12a here ?
> Doesn't it apply to gxbb/gxl as well ?

Ah, it does indeed. Fix coming, thanks.

--
Carlo Caione

