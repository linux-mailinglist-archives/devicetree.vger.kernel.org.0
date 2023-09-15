Return-Path: <devicetree+bounces-390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 478D97A1729
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0153228298E
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF07CD277;
	Fri, 15 Sep 2023 07:20:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5220D6AB7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:20:41 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A038DA1
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:20:39 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-400a087b0bfso19537255e9.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694762438; x=1695367238; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tJaQO2Osvw63vkpc+hRyCtg96PFW7ippMuIjtGVzXRg=;
        b=TmwMcB9ZDYvPpo1Msjcjc9/6yzZldkOS2xwAUdJZXNrBTfJw29WOT6oLZq0RzaT0UW
         kdwHO7HJXRxldj0gPVYXJE+jmZhQAZh0L5Xoh1zYWYE0+FVEArQse9bLdIYLuTaGZC3u
         JR0UkGSFwT4GFMa3UyGHTC87G61NHBR8LnN4yA5u/ozsMTOdDE/JxFdadwl8UAiFDGo+
         r0KwTNoV/QcOT/z28EV7dPLnFSvvQh98gRv8/0h0173uJR2jWzOdu3dfFVYAi+QIZNyg
         5eViWUzk/cIdA0a7tHhqfQDKwhjdZBMxf667zosHVsCRshRR2JkuBMCSQ+1NVdO5fABy
         +fFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694762438; x=1695367238;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tJaQO2Osvw63vkpc+hRyCtg96PFW7ippMuIjtGVzXRg=;
        b=Q4ZleNY+QqC7OgZkyrYH8/e2qNPKrGr/49CzjHBdTsAubP1juUQhafOeRzS7WssEhR
         S85iqawiLLhik8++6r69lxO4fOYXr/kh0vRIGNP1fuk6GGZ3Tuq7mVHpiPiWZA49pIB6
         7V+mBNb8VS8bnv2Lxb9GMC8nbR+9Tq895lAnOI6E7mRcqwaEyQa+xzaRm6Fr8lbOnaXQ
         fSCYC3W05vr+Tw6vHs48kwaAHt944tWgBJeNAHpOJ05iKZRw3KaXVeVIIVJZ4JUhs536
         HRyd5dSxNMqMnxzhuIc/U6ZBn9W6DW1YYZuTa6cPpsoNQNDw2HS6KvWKmh5+EOufv+Gm
         ujEA==
X-Gm-Message-State: AOJu0YyNbDjCU/Kft3PzF4osX39e/sFtWFLOIfD2+Kr5vefxnzGTxZ6P
	sFKtVlyOVpL0pAPnIO6Ww9WTAsJt+rRwtw9Nb4I=
X-Google-Smtp-Source: AGHT+IHn1pzRnqERbj4JktaivR/54B/ax+k9/9EVN0v/fkF7vEk1NBnAMBcbA4gBaXUMXzS102iogg==
X-Received: by 2002:adf:f5ce:0:b0:31d:c3d2:4300 with SMTP id k14-20020adff5ce000000b0031dc3d24300mr506300wrp.71.1694762438014;
        Fri, 15 Sep 2023 00:20:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id m6-20020adfe946000000b0031980783d78sm3666315wrn.54.2023.09.15.00.20.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:20:37 -0700 (PDT)
Message-ID: <85264977-69f1-3e14-03c6-bdadb4246c23@linaro.org>
Date: Fri, 15 Sep 2023 09:20:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 01/12] riscv: Add SOPHGO SOC family Kconfig support
Content-Language: en-US
To: Wang Chen <unicornxw@gmail.com>, linux-riscv@lists.infradead.org,
 conor@kernel.org, aou@eecs.berkeley.edu, krzysztof.kozlowski+dt@linaro.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
 xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>
References: <20230915071005.117575-1-wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915071005.117575-1-wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 09:10, Wang Chen wrote:
> From: "xiaoguang.xing" <xiaoguang.xing@sophgo.com>
> 
> The first SoC in the SOPHGO series is SG2042, which contains 64 RISC-V
> cores.
> 
> Signed-off-by: xiaoguang.xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>

Your patch threading is completely broken/missing, so this makes review
unnecessary difficult. Fix your process (e.g. use b4).

Best regards,
Krzysztof


