Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 30DF567B58
	for <lists+devicetree@lfdr.de>; Sat, 13 Jul 2019 19:00:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727784AbfGMRAb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Jul 2019 13:00:31 -0400
Received: from sonic311-57.consmr.mail.ne1.yahoo.com ([66.163.188.238]:36588
        "EHLO sonic311-57.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727768AbfGMRAb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 13 Jul 2019 13:00:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1563037229; bh=bUupnVQ0Ag4Ykq9+hii+ufsJzZt3KSB59w295IKS5jQ=; h=Date:From:Reply-To:Subject:From:Subject; b=Dj7Atgk2OjkDOLAI8LDOH6wgvsm7k8DIlWByvnzngy/Vs5+b4MfyGBCD8f5crm2iVV+hT9tsl4mOd3SGnhQaFfpjx5nAb6cqWQGd/eNf7n0NCjUdRsiulrow9PvrsByGRTwQdM+q4od0LY0VP6Wnllx1l2cNSZOD2bu7OrL61isLRuMsKOZGLU2kXvIYkKziGETnxIQJvNmB5lpibaqNGrtDEtdhbTkU4IYB2Yak+LWYiPZuiw08RFJOlxNvO/sq7UUQ/vgh3ucUvcZeCVaDNHEurohKRxKGC7p+2GX6UHFbudas3VFtPAveySB3oT7IJvOTp1cwxzdNfV6bS5U//A==
X-YMail-OSG: MckBvoQVM1l0tVw3AQ8e2wQcX1xdjn5R6deGgOkzhQxSExDeEMe8vz5JAoUxe7n
 8WwVJHbRFVpEVsdstI6HDIJ.uDUzDbVIvRmXTS5smQP9bl5aNPqVUnszFX9Bas3w0gCUup2ndjgx
 fv0m37n0d4NvZ75eSa4DgVy3gHQ1vJAVNbSNw3avIQqmisMzy.jzyLMrnJZXDq2LLT3lQ9P8Xrvf
 87zpaE5mCTAebOSmRnJaDghvQhSaYzzG6xHSoAK8ev2R74OpAm15xcnWVFVBnV7b.bkOo984tyzl
 .wr1setngNIym1Gn7byfOc2L2m.SLH1uhuwKdXDvKvpdZ7UtmmwUmNkGHT1BaYtcLxbzBZSVNA4M
 Q1Dp.2Nnl9Vzldu2JEOmgDXqJQtDkVYwczFr5Z6I9_Ip1v0M34ZeMANhdVG0TaAbJl9m6u9i9iDn
 8bc0aV.EN.KaDEbhRHywF8SHAAoOk9pKyaVQDMmP2Oj29e_moz23BQ7nJlWTg8VkSXLBIpVATtfx
 ExSc_63XrnPrAI4wKJHzJZDUukdZgvlf4PQwvICdJYor2AhTgUm1C51yXSCsIWQKNbgiDgg96nis
 QCqPORePCi5RmvJ3fXxksK_fApQS_g_Jhs6TnaGyHC_4q2eYbanEMjOBcMPmTklGOOz5KYswSTUL
 zD8eH7eofyUs8EIUh5hIRVUj_ym_1Y2bpuppSU8J97zAXAw07HjtelnIz.mYNlFIyQpfIeW4cfSG
 nDp41o5qcfE9.uLUX6hsINSgKvVSs45GzcfLzo9gPE5moBNgLNgkeXLwE3BkKzV16Ood1Nj.8BgI
 Mug0KHiL115MEqLNd3w0oopuKKGQuNbErKi_gQDzU3IEvQnhtNJXLAKPVjv6jpbdIF21Tv5QP7yU
 mpakUXoWcSKAm7BRfywhx4UBFs.d3jVg7RO93NLk5bJYGOCZ8ka6gFX2.UIVruMlSBvIOzl5mNzy
 9Tb60TYutKM4rhtcmsXJYybTZX6VjofD71l4R6hFXDM8_04FqD3A4YUPD6bfVlHd6v7BwKqSzObI
 sBoCQLPbo_t0A8CLeNiGaLmJayr.UnevQkuJk_htbD.jCK1vi8I0SzFtRwfhyOqonH1ljRjclzJb
 hkbmLDXLeCWTwNk2PBTvA5C17Fmea.2FxJucHCsrh5tV5fr6ooOh_iM0SoeHFEVyzsCAJZaxe6gW
 7TLM2BT.7J9wda6J29qdMd3sd0vU2rDEhOKMGOjbYCmgOXnQvc8UVGYFS7fZ8KQMLRzKm0_6CwAV
 9ECZS9D4hQcjzUuOsXjuglJdOwNFhDwuwiK6T
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.ne1.yahoo.com with HTTP; Sat, 13 Jul 2019 17:00:29 +0000
Date:   Sat, 13 Jul 2019 16:58:28 +0000 (UTC)
From:   Andredo Silva <purchase_cloud9.inc1342@ybba.org.in>
Reply-To: purchase_cloud9.inc@outlook.com
Message-ID: <477290157.1384724.1563037108501@mail.yahoo.com>
Subject: RFQ
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Dear Supplier,

We are interested in your products
We need assurance that good quality of this items would be delivered to us after you receive our order.
Please have someone on sales to Reply me On My Personal Email below;

E-mail: purchase_cloud9.inc@outlook.com

We await your soonest reply to send order.

Best Regards.
Andredo Silva
Senior Buyer
Cloud9. Inc SRL
Av. de Burgos, .199, 28050 Madrid, Spain
Tel: +34 945 891 234
