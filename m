Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2FF63136C8F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2020 12:58:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728024AbgAJL5Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jan 2020 06:57:24 -0500
Received: from sonic312-20.consmr.mail.bf2.yahoo.com ([74.6.128.82]:37701 "EHLO
        sonic312-20.consmr.mail.bf2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728003AbgAJL5Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 10 Jan 2020 06:57:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1578657442; bh=E+ks7AydzaUb4ISZTuxin7s0E6gVmk5020fTLYVYB5E=; h=Date:From:Reply-To:Subject:References:From:Subject; b=R3gXsySB3C7WV4K6KDTlfwbJhgYt/GEbLtkSPqgdsoju9Oju4q7WR45OOYZJfVFms+O3Kmku98aZJBIVcLr8IVor7hSfqxP1CpJ7qnnuk2W6jIehk6bHcVxeZVQhmOXdXW6X9eySrZhNVVw9sz3esZ+iHWGq+cHQVI6PlpAo1Umfy+jQeVzwwF/ZdwC67gNUBzmsadFQEaLwznybDjNuHL5iExdce1idWgIuM9+YbxkuZSVy8eS19JIgzoSAhc1nvu4rC/nJO5FlcDfA8L7z+SjesansxbP1/WYCXKYMMcWtvNCV9Yfs4PHpA8qxYSMWfQNzsBsoDb+YHLBa9yEJEw==
X-YMail-OSG: 1JRtVWUVM1kdx3TGPXWh84EJ1_WwV6lxU7UH45itfZdzyrK2xZ4Yo5hrvTG17cV
 nH.qlr6CQbAJ_Xf4Xo3Wb1l3Y.uCSBlPLQ8lbGY4NmswBnlUHsLXqqlMxFjnc4dbK2oF0Pa4P7ih
 SairwuWlnqEPPomCVCLEskZ7S4aBvK9UcMjYcH9o9bL8Ciy4JsF.4B0lxkkxmo.._Vb0MMjpSFOX
 e2eGzajJnUsUvQC6BvwMZRPSntgcLqi4FXoSYNSZnE3.dwRIFa9ClMovgb.AQABd8A5D_k7LQtSq
 7q7kBe2CAN4p4zJZo70nhsOc6_2gbz3yJaUWV72AtkHaFGFKdvseLyhK_PxLBSgcslH.mMqoPdTq
 PHSfQm_OZ4JQ1LjARRbPAvrLMVpZ.23f7XcA.xIDF0cn.XqD3QeGorn2S3yB.sCMmlb7esYWznI7
 3FKx.VRPSQ9XHd2MYm6K2UcLTzi5iJzUyPjGTxX0Iv7H0IMQaSjhWQQ16HAqaZo3w3Kv6y7mVLja
 ygR9XHboIZfQyPZAN0ibFg9ijJQG5ppO6HmlOOpURb5fw4Eji3qUXjW06xvrJs1ZrxsZ65EFqWIn
 zcb9T89ZyWVpxl6dMImBTgBLfkvey6d_4RdYo_hcrzsXcZaqJPwnBzkIUJF40EqlLuEsiWA3wC4r
 HpJHn7NzrlaulJKqcAdMtSbQzKPY8UDkBotYldqFPsQlcvTV0Ejtf1wz4GtDMDAQc98JJ1hk5jOc
 B0g91EgcM3rG6PiZ_ilOYLjwJd.A5AMFd8.ajAfXvL6EaT_ATxx97fpUGKBlqC7Ntd_meNELn4Uj
 .B_puptoL8nokNLpIratKSmQKHNHxqQH5bXXdMwvdsJJHIe7W.UPsyyVwkNsuf98NcY091u3b5H3
 TXzUSDPXF0gElW2uYGJsPE_fqHj2bXc7HoO3y9nB6ahwvcisGjFWBhPWvInlpzKlzke5dH2bvmHN
 61szFoGbdCHmalLy96XA3DNDGZdFBLVQC.scacDL1ME.oaBoiqwLza9eNyGu1fy5oW1ZGA0iPnpf
 dqUDtvwsh4T6duXH6iWdeeraurhuNvJmcfEMVwcIemvDVrhxWzGvHm7GBM_vAe5jFrSsun9YvbLg
 Kvm2n5_xtdV5BT8pT7.BNA6IGbS3ZJ8Vk_qKxywpoF1ODw6xO_aR5Q4zwDCW8gGUDAKl_xVAh6tu
 r9drsBmYqyCoIXp6acMUy2D1aZ2eEB9xKRL8VVI0QnqZu2SQqhtb6xkOQZfpOt0zIeWqAAcgS_OX
 3EHd4pwLlyPC4At8McI7XdXCDjqKz6uWb4x1pB9e_k5PxHKXzkBRrbUVtRcuRRojJCnhx0wd.UgP
 uXKVC1zXKKCl4YF_qpODrolA-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.bf2.yahoo.com with HTTP; Fri, 10 Jan 2020 11:57:22 +0000
Date:   Fri, 10 Jan 2020 11:57:22 +0000 (UTC)
From:   Aisha Gaddafi <gaisha983@gmail.com>
Reply-To: gaddafia504@gmail.com
Message-ID: <697845896.6244548.1578657442067@mail.yahoo.com>
Subject: Dear Friend,
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <697845896.6244548.1578657442067.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNodin Mozilla/5.0 (Windows NT 6.1; rv:72.0) Gecko/20100101 Firefox/72.0
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear Friend,

I came across your e-mail contact prior a private search while in need of 
your assistance. My name is Aisha  Gaddafi a single Mother and a Widow with 
three Children. I am the only biological Daughter of late Libyan President 
(Late Colonel Muammar Gaddafi).

I have investment funds worth Twenty Seven Million Five Hundred Thousand 
United State Dollar ($27.500.000.00 ) and i need a trusted investment 
Manager/Partner because of my current refugee status, however, I am 
interested in you for investment project assistance in your country, may be 
from there, we can build business relationship in the nearest future.

I am willing to negotiate investment/business profit sharing ratio with you 
base on the future investment earning profits.

If you are willing to handle this project on my behalf kindly reply urgent 
to enable me provide you more information about the investment funds.

Your Urgent Reply Will Be Appreciated.

Best Regards
Mrs Aisha Gaddafi
(gaddafia504@gmail.com)
